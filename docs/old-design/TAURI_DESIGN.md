# Tauri App 封装设计说明

本文档描述当前桌面端 Tauri 封装的整体设计、模块分工和关键配置，便于后续维护与迭代。

## 目标与原则

- 在不破坏 Web 版本的前提下，提供桌面端能力（配置、文件操作、通知、托盘）；STT 仅在 Tauri 提供。
- 通过环境检测与降级逻辑，保证同一套前端代码可运行在 Web/Tauri；STT UI 在 Web 环境隐藏。
- 依赖 Tauri v2 ACL/Capability 机制，明确命令授权边界。

## 项目结构

- 前端：`src/`（Vite + React + TypeScript）
- Tauri：`src-tauri/`
  - `src/commands/`：Rust 端命令实现（配置、文件、系统）
  - `src/stt/`：Rust 端 STT 模块（录音、处理、上传、解析）
  - `capabilities/`：ACL capability 定义
  - `permissions/`：应用自定义命令权限定义
  - `tauri.conf.json`：应用与构建配置

## 运行模式与环境检测

- `src/lib/tauri/environment.ts` 使用 `@tauri-apps/api/core` 的 `isTauri()` 判断运行环境。
- Web 环境下自动回退到浏览器能力（下载、文件选择、通知）。
- STT 仅在 Tauri 启用，Web 环境不渲染录音入口。

## Rust 端命令设计

所有命令通过 `tauri::command` 暴露，统一在 `src-tauri/src/main.rs` 注册：

- 配置类（`src-tauri/src/commands/config.rs`）
  - `get_backend_url`：从 Store 读取后端地址
  - `set_backend_url`：写入并持久化后端地址
  - `test_backend_connection`：请求 `/health` 检测连通性
- 文件类（`src-tauri/src/commands/file.rs`）
  - `select_file`：原生文件选择
  - `save_chat_history`：对话记录导出为 JSON
  - `export_to_json`：通用 JSON 导出
- 系统类（`src-tauri/src/commands/system.rs`）
  - `show_in_folder`：在系统文件管理器中定位文件
- STT（`src-tauri/src/stt/mod.rs`）
  - `start_recording`：开始录音并返回录音 ID
  - `stop_recording`：停止录音并处理音频（downmix + 重采样 + 编码）
  - `transcribe_recording`：上传并返回转写结果
  - `transcribe_wav_base64`：接收前端 WAV base64 并上传转写（macOS WebKit 录音）
  - `retry_transcribe`：重试转写
  - `cancel_recording`：取消录音并清理
  - `get_stt_config`：读取只读 STT 配置

## ACL / Capability 设计

- `src-tauri/capabilities/main.json` 为主窗口启用能力集合。
- 核心插件采用 `core:default`、`dialog:default`、`fs:default`、
  `notification:default`、`store:default`、`http:default`。
- 自定义命令权限通过 `src-tauri/permissions/app-commands.toml` 定义，
  以 `allow-*` 形式绑定具体命令。
- STT 相关命令使用 `allow-start-recording`、`allow-stop-recording`、
  `allow-transcribe-recording`、`allow-transcribe-wav-base64`、
  `allow-retry-transcribe`、`allow-cancel-recording`、`allow-get-stt-config`。
- `http:default` 必须配置 `allow` 白名单并匹配绝对 URL，
  否则会直接拒绝请求并报 `url not allowed on the configured scope`。

## 前端 Tauri 封装层

`src/lib/tauri/` 提供统一 API：

- `commands.ts`：封装 Rust 命令与 Web 端降级逻辑。
- `types.ts`：前后端命令返回值类型定义。
- `index.ts`：统一导出入口。
- `http.ts`：Tauri HTTP 兼容层（见下文“HTTP 插件兼容层”）。

## 后端地址配置

- 前端设置面板 `src/components/Settings/BackendConfig.tsx` 提供查看、测试与保存。
- Tauri 环境下读写 Store（`config.json`），默认地址为 `http://192.168.50.50:5000`。
- 保存成功后调用 `apiClient.updateBaseURL()` 立刻更新请求基址。

## 文件操作

- Tauri 端使用 `tauri-plugin-dialog` + `tauri-plugin-fs` 处理选择/保存。
- Web 端使用 `<input type="file">` 与浏览器下载作为降级方案。

## 后端请求（RAG/系统 API）

- Tauri 环境下使用本地 `tauriFetch`（`src/lib/tauri/http.ts`）发送请求，绕过浏览器 CORS。
- `src/services/apiClient.ts` 在 `isTauriEnv()` 时走 `tauriFetch`，Web 环境继续使用 Axios。
- `src/services/chatApi.ts` 的 SSE 流在 Tauri 环境也使用 `tauriFetch`，再由 `readSseStream` 解析流。
- STT 请求由 Rust 侧 `reqwest` 发送，前端不直接请求 STT 服务。
- 后端基址来自 Tauri Store（`get_backend_url`），在 Rust 端 normalize 并确保为绝对地址。

## HTTP 插件兼容层（Tauri v2）

### 背景与问题

Tauri v2 的 `@tauri-apps/plugin-http` 在 Rust 侧通过 IPC 命令暴露：
`plugin:http|fetch` → `fetch_send` → `fetch_read_body`。

当 **JS 包版本与 Rust 插件版本不一致** 或 **JS 侧调用了不完整的协议** 时，会出现：
- `fetch_read_body missing required key streamChannel`
- `fetch_cancel_body not allowed. Command not found`

这些错误与后端无关，属于 **JS/Rust 协议不匹配**。

### 方案概述

在 `src/lib/tauri/http.ts` 实现本地 `tauriFetch`：
- 直接使用 `@tauri-apps/api/core` 的 `invoke` 和 `Channel` 调用插件 IPC。
- 明确传递 `streamChannel`，并用 `ReadableStream` 构造浏览器一致的 `Response`。
- 只依赖 Rust 插件的实际命令集，避免 JS wrapper 版本差异。
- 请求体使用 `Request` 规范化后再转为 `Array<number>` 传给 Rust，
  headers 统一转换为字符串数组，保证 IPC 可序列化。

### 关键流程

1. **创建请求**：`plugin:http|fetch` 返回 `rid`。
2. **发送请求**：`plugin:http|fetch_send` 返回响应头与 `responseRid`。
3. **读取响应体**：`plugin:http|fetch_read_body` 必须带 `streamChannel`；
   `streamChannel` 回传的 bytes 末尾标志位 `1/0` 表示结束/继续。
4. **构造 Response**：拼装 `status/statusText/url/headers`，对齐浏览器行为。
5. **取消请求**：`AbortSignal` 触发 `plugin:http|fetch_cancel`。

### 使用范围

- **普通 API**：`apiClient.ts` 统一使用 `tauriFetch`（Tauri）或 Axios（Web）。
- **SSE**：`chatApi.ts` 用 `tauriFetch` 获取响应流，再由 `readSseStream` 解析。
- **STT**：不经过 `tauriFetch`，由 Rust 侧直接上传。

### 行为说明

- **SSE 与普通请求** 都通过同一套 `tauriFetch` 返回 `Response`，
  是否流式读取由上层 `readSseStream` 决定，不在 HTTP 层区分。
- 读取 body 的协议由 Rust 侧控制，JS 只负责按约定消费 bytes 并拼成流。

### 维护约束

- 不要在 Tauri 环境直接使用 `@tauri-apps/plugin-http` 的 JS `fetch`；
  统一走 `src/lib/tauri/http.ts`，确保协议一致。
- 若升级 Rust 插件版本，请验证 `http.ts` 的 IPC 命令是否仍一致。

## 音频录音（STT）

- macOS：WebView 走 `getUserMedia` + `MediaRecorder` 录音，前端解码/重采样后生成 WAV，
  通过 `transcribe_wav_base64` 交给 Rust 上传与解析。
- Windows/Linux：Rust 端 `src-tauri/src/stt/recorder.rs` 采集并 downmix，`processor.rs` 重采样与编码，
  `client.rs` 负责上传与解析，命令入口在 `src-tauri/src/stt/mod.rs`。
- Rust 录音默认使用设备的 `default_input_config`，支持 U8/I8/U32/F64 等格式并转换为 f32。
- 前端 `src/hooks/useSTT.ts` 根据平台分流：
  - macOS：`transcribe_wav_base64`
  - Windows/Linux：`start_recording` / `stop_recording` / `transcribe_recording`
    / `retry_transcribe` / `cancel_recording`
- 前端启动时调用 `get_stt_config`，使用 `maxDurationMs` 触发自动停止录音。
- STT 配置从环境变量 `STT_*` 读取（`src-tauri/src/stt/config.rs`），前端不再持有 STT 配置。
- 录音按钮仅在 Tauri 环境渲染，Web 端不展示。

## 通知与系统托盘

- 通知：`tauri-plugin-notification`，在文档上传/向量更新完成后触发。
- 托盘：`src-tauri/src/menu.rs` 提供显示/隐藏/退出菜单。
- 关闭窗口行为：macOS 保持默认退出；Windows/Linux 隐藏到托盘。

## 构建与配置

- `src-tauri/tauri.conf.json`
  - `build.devUrl` 与 `build.frontendDist` 对应本地与生产资源。
  - CSP 放开 `connect-src` 以支持用户自定义后端地址。
  - `bundle` 定义多平台目标与图标。

## 已知限制与后续建议

- 若需更细粒度权限，应在 `permissions/` 中继续细化并收紧 scopes。
- 生产环境建议进一步收敛 CSP 与后端地址白名单策略。
- 多平台打包依赖需按平台补齐（如 Linux WebKit 依赖）。

# Tauri 应用打包指南

本文档提供 Tauri 桌面应用的手动打包和自动化打包完整指南。

## 目录

- [快速开始](#快速开始)
- [手动打包](#手动打包)
  - [macOS 打包](#macos-打包)
  - [Windows 打包](#windows-打包)
  - [Linux 打包](#linux-打包)
- [自动化打包 (GitHub Actions)](#自动化打包-github-actions)
- [打包配置](#打包配置)
- [常见问题](#常见问题)

---

## 快速开始

```bash
# 安装依赖
npm install

# 开发模式运行
npm run tauri:dev

# 打包当前平台
npm run tauri:build
```

**打包产物位置**：`src-tauri/target/release/bundle/`

---

## 手动打包

### macOS 打包

#### 前置要求

1. **Xcode Command Line Tools**
   ```bash
   xcode-select --install
   ```

2. **Rust 工具链**
   ```bash
   # 如果未安装
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

3. **Node.js 18+**
   ```bash
   node --version  # 确认版本
   ```

#### 打包步骤

##### 1. 打包当前架构（Intel 或 Apple Silicon）

```bash
npm run tauri:build
```

**产物**：
- `src-tauri/target/release/bundle/dmg/*.dmg` - DMG 安装包（推荐分发）
- `src-tauri/target/release/bundle/macos/*.app` - 应用程序包

##### 2. 打包通用二进制（Universal Binary，同时支持 Intel + Apple Silicon）

```bash
# 添加目标架构
rustup target add x86_64-apple-darwin
rustup target add aarch64-apple-darwin

# 分别打包两个架构
npm run tauri build -- --target x86_64-apple-darwin
npm run tauri build -- --target aarch64-apple-darwin

# 使用 lipo 合并为通用二进制（需手动操作）
lipo -create \
  src-tauri/target/x86_64-apple-darwin/release/bundle/macos/qa-agent.app/Contents/MacOS/qa-agent \
  src-tauri/target/aarch64-apple-darwin/release/bundle/macos/qa-agent.app/Contents/MacOS/qa-agent \
  -output qa-agent-universal
```

##### 3. 代码签名与公证（可选，用于分发）

```bash
# 签名应用
codesign --deep --force --verify --verbose \
  --sign "Developer ID Application: Your Name (TEAM_ID)" \
  src-tauri/target/release/bundle/macos/qa-agent.app

# 创建签名 DMG
hdiutil create -volname "PowerPlantQA" \
  -srcfolder src-tauri/target/release/bundle/macos/qa-agent.app \
  -ov -format UDZO qa-agent-signed.dmg

codesign --sign "Developer ID Application: Your Name (TEAM_ID)" qa-agent-signed.dmg

# 提交公证（需 Apple Developer 账号）
xcrun notarytool submit qa-agent-signed.dmg \
  --apple-id "your@email.com" \
  --password "app-specific-password" \
  --team-id "TEAM_ID" \
  --wait

# 验证公证
xcrun stapler staple qa-agent-signed.dmg
```

---

### Windows 打包

#### 前置要求

1. **Visual Studio 2019+ with C++ Build Tools** 或 **Microsoft C++ Build Tools**
   - 下载：https://visualstudio.microsoft.com/downloads/
   - 安装时勾选 "Desktop development with C++"

2. **Rust 工具链**
   ```powershell
   # PowerShell 运行
   Invoke-WebRequest -Uri https://win.rustup.rs -OutFile rustup-init.exe
   .\rustup-init.exe
   ```

3. **Node.js 18+**

4. **WebView2 Runtime**（用户环境需要，开发环境自动安装）

#### 打包步骤

```powershell
# 在 PowerShell 或 CMD 中运行
npm install
npm run tauri:build
```

**产物**：
- `src-tauri\target\release\bundle\msi\*.msi` - Windows Installer 安装包

#### 高级选项

```powershell
# 指定架构
npm run tauri build -- --target x86_64-pc-windows-msvc

# 同时生成 NSIS 安装包（需修改 tauri.conf.json）
# "targets": ["msi", "nsis"]
```

#### 跨平台打包（从 macOS/Linux 打包 Windows）

**不推荐**，建议使用 GitHub Actions 或在 Windows 虚拟机中打包。

---

### Linux 打包

#### 前置要求

##### Debian/Ubuntu

```bash
sudo apt update
sudo apt install -y \
  libwebkit2gtk-4.1-dev \
  build-essential \
  curl \
  wget \
  file \
  libxdo-dev \
  libssl-dev \
  libayatana-appindicator3-dev \
  librsvg2-dev
```

##### Arch Linux

```bash
sudo pacman -S \
  webkit2gtk-4.1 \
  base-devel \
  curl \
  wget \
  file \
  openssl \
  appmenu-gtk-module \
  gtk3 \
  libappindicator-gtk3 \
  librsvg
```

##### Fedora

```bash
sudo dnf install \
  webkit2gtk4.1-devel \
  openssl-devel \
  curl \
  wget \
  file \
  libappindicator-gtk3-devel \
  librsvg2-devel
```

#### 打包步骤

```bash
npm install
npm run tauri:build
```

**产物**：
- `src-tauri/target/release/bundle/appimage/*.AppImage` - AppImage 通用格式
- `src-tauri/target/release/bundle/deb/*.deb` - Debian/Ubuntu 安装包

#### 指定目标格式

修改 `src-tauri/tauri.conf.json`:

```json
"bundle": {
  "targets": ["appimage", "deb", "rpm"]  // 添加 rpm 需安装 rpm 工具
}
```

---

## 自动化打包 (GitHub Actions)

### 配置说明

已创建 `.github/workflows/build.yml` 工作流，支持：
- **多平台自动构建**：macOS (Intel + Apple Silicon)、Windows、Linux
- **触发方式**：
  - 推送标签 `v*`（如 `v1.0.0`）
  - 手动触发（`workflow_dispatch`）
- **自动发布**：标签推送时自动创建 GitHub Release

### 使用方法

#### 方法 1：推送标签触发

```bash
# 创建标签
git tag v1.0.0

# 推送标签到 GitHub
git push origin v1.0.0
```

GitHub Actions 会自动：
1. 在 macOS/Windows/Linux 环境中构建
2. 生成所有平台的安装包
3. 创建 GitHub Release 并上传安装包

#### 方法 2：手动触发

1. 打开 GitHub 仓库页面
2. 进入 **Actions** 标签
3. 选择 **Build Multi-Platform** 工作流
4. 点击 **Run workflow** 按钮
5. 选择分支并运行

#### 下载构建产物

- **GitHub Actions Artifacts**：在工作流运行页面下载
- **GitHub Releases**（标签触发时）：在 Releases 页面下载

### 高级配置

#### 自定义构建目标

编辑 `.github/workflows/build.yml` 中的 `matrix` 部分：

```yaml
matrix:
  include:
    - platform: 'macos-latest'
      target: 'aarch64-apple-darwin'  # 仅 Apple Silicon
    - platform: 'windows-latest'
      target: 'x86_64-pc-windows-msvc'
```

#### 添加构建通知

在工作流末尾添加通知步骤（如 Slack、Discord、Email）。

---

## 打包配置

### 修改应用信息

编辑 `src-tauri/tauri.conf.json`:

```json
{
  "productName": "PowerPlantQA",  // 应用名称
  "version": "1.0.0",                  // 版本号（建议与 package.json 同步）
  "identifier": "com.powerplant.qa-agent",  // Bundle ID（唯一标识）
  "bundle": {
    "icon": ["icons/icon.png"],        // 应用图标（多尺寸）
    "publisher": "PowerPlant Tech",    // 发布者
    "copyright": "Copyright © 2024",   // 版权信息
    "category": "Productivity",        // 应用分类
    "shortDescription": "智能问答系统",
    "longDescription": "基于智能问答技术的电厂运维辅助系统桌面版"
  }
}
```

### 生成应用图标

使用 Tauri 图标生成工具（需提供 PNG 源图，推荐 1024x1024）：

```bash
npm run tauri:icon path/to/icon.png
```

本项目生成图标示例：

```bash
npm run tauri:icon src-tauri/icons/icon.png
```

自动生成所有平台所需的图标尺寸并放到 `src-tauri/icons/` 目录。

### 调整打包目标

```json
"bundle": {
  "targets": [
    "dmg",       // macOS 磁盘映像
    "app",       // macOS 应用包
    "msi",       // Windows Installer
    "appimage",  // Linux 通用格式
    "deb"        // Debian/Ubuntu
  ]
}
```

可选目标：
- `nsis` - Windows NSIS 安装包
- `rpm` - RedHat/Fedora 安装包
- `pacman` - Arch Linux 包

---

## debug

mac 上 `Cmd + Option + I` 调出类似浏览器 dev的控制台。
windows 上用 `Ctrl + Shift + I` 。

## 常见问题

### 1. macOS 打包失败："Failed to bundle project"

**原因**：缺少 Xcode Command Line Tools

**解决**：
```bash
xcode-select --install
```

### 2. Windows 打包失败："link.exe not found"

**原因**：缺少 Visual Studio C++ 构建工具

**解决**：安装 Visual Studio 或 Microsoft C++ Build Tools

### 3. Linux 打包失败："webkit2gtk not found"

**原因**：缺少 WebKit2GTK 依赖

**解决**：按照 [Linux 前置要求](#linux-打包) 安装依赖

### 4. GitHub Actions 构建失败

**检查清单**：
- 确认 `package.json` 中 `tauri` 依赖正确
- 确认 `src-tauri/tauri.conf.json` 配置有效
- 查看 Actions 日志定位具体错误

### 5. 打包体积过大

**优化方法**：

1. **启用发布优化**（`src-tauri/Cargo.toml`）：
```toml
[profile.release]
opt-level = "z"     # 优化体积
lto = true          # 链接时优化
codegen-units = 1   # 单编译单元
strip = true        # 去除符号
```

2. **前端构建优化**（已在 `vite.config.ts` 配置）

3. **排除不必要的依赖**

### 6. macOS "App is damaged and can't be opened"

**原因**：未签名或未公证

**解决**：
- 用户端：右键 → 打开（或系统设置 → 安全性允许）
- 开发端：进行代码签名与公证

### 7. Windows Defender 报毒

**原因**：未签名的可执行文件可能被误报

**解决**：
- 短期：用户添加排除项
- 长期：购买代码签名证书并签名

---

## 发布检查清单

打包前确认：

- [ ] 更新版本号（`package.json` 和 `tauri.conf.json` 保持一致）
- [ ] 测试开发模式功能正常（`npm run tauri:dev`）
- [ ] 更新 CHANGELOG 或 Release Notes
- [ ] 检查环境变量配置（`.env.production`）
- [ ] 生成应用图标（`npm run tauri:icon`）
- [ ] 测试打包后的应用（安装并运行）
- [ ] 准备签名证书（macOS/Windows 商业分发需要）

---

## 参考资源

- [Tauri 官方文档 - Building](https://v2.tauri.app/develop/building/)
- [Tauri 配置文档](https://v2.tauri.app/reference/config/)
- [代码签名指南 (macOS)](https://v2.tauri.app/distribute/sign/macos/)
- [代码签名指南 (Windows)](https://v2.tauri.app/distribute/sign/windows/)
