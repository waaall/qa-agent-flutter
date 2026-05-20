# QA Agent Flutter

智能问答系统 Flutter 跨平台客户端，支持 iOS、Android、macOS、Windows、Linux 和 Web。

当前版本对齐新版 `qa-agent-langchain` 后端能力：对话、报告任务、STT 语音输入、TTS 语音播放，并支持 Agent / STT / TTS 三类后端地址独立配置。

## 功能特性

- **多端对话客户端**：基于新版 `/api/chat`、会话历史和删除会话接口。
- **报告工作区**：支持创建报告任务、轮询状态、查看 Markdown / JSON / 文本 artifact、下载 artifact、取消和重试任务。
- **本地报告列表**：后端当前无 report list 接口，客户端仅持久化报告概要到本地 Hive。
- **STT 语音输入**：录音后调用独立 STT 后端 `/asr` 转写。
- **TTS 语音播放**：助手回答可一键播放，接口兼容 OpenAI-style `/v1/audio/speech`，输出格式固定 `mp3`。
- **三后端配置**：Agent、STT、TTS 服务地址可分别配置、保存和测试连接。
- **Markdown 渲染**：助手回答和报告 Markdown artifact 支持 Markdown 展示。
- **主题系统**：浅色、深色、跟随系统。

## 当前不支持

以下能力本版本刻意不保留旧实现：

- 不支持文档上传：后端当前不再提供 `/api/upload`。
- 不展示知识文档列表：不使用 `/api/documents`。
- 不提供数据库信息 UI：不使用 `/api/database/info`。
- 不兼容旧 Agent API：模型和字段只按当前后端接口设计。

## 技术栈

| 模块 | 技术方案 |
|------|----------|
| 状态管理 | flutter_riverpod |
| 网络请求 | dio |
| 路由 | go_router |
| 本地存储 | shared_preferences + hive |
| Markdown | flutter_markdown + flutter_highlight |
| 文件保存 | file_picker |
| 桌面窗口 | window_manager |
| JSON 序列化 | freezed + json_serializable |
| 语音录制 | record |
| 语音播放 | audioplayers |

## 项目结构

```text
lib/
├── main.dart                 # 应用入口，初始化本地存储和桌面窗口
├── app.dart                  # App 根组件和路由
├── config/                   # 配置层
│   ├── app_config.dart       # 默认后端地址、超时、TTS/STT 默认参数
│   ├── endpoints.dart        # 新版 API 端点常量
│   └── constants.dart        # UI 常量
├── core/                     # 核心基础设施
│   ├── network/              # Dio 封装和错误拦截
│   ├── storage/              # Hive / SharedPreferences 存储
│   └── utils/                # 日志等工具类
├── models/                   # 数据模型（freezed）
│   ├── api_responses/        # Chat / System / Index 响应模型
│   ├── backend_config.dart   # Agent / STT / TTS 三后端配置
│   ├── message.dart          # 消息模型
│   ├── report.dart           # Report 请求、状态、artifact、本地概要模型
│   └── session.dart          # 会话模型
├── services/                 # API 服务层
│   ├── chat_service.dart     # 对话接口
│   ├── index_service.dart    # 知识索引更新接口
│   ├── report_service.dart   # 报告任务接口
│   ├── stt_service.dart      # 语音转文字
│   ├── system_service.dart   # 健康检查和统计
│   └── tts_service.dart      # 语音合成
├── providers/                # Riverpod 状态管理
│   ├── chat/                 # 聊天状态和控制器
│   ├── config/               # 三后端配置
│   ├── report/               # 报告列表、详情、轮询状态
│   ├── session/              # 会话管理
│   ├── stt/                  # 录音和转写状态
│   ├── tts/                  # TTS 播放状态
│   ├── theme/                # 主题状态
│   └── ui/                   # 侧边栏和工作区切换
├── screens/                  # 页面
├── theme/                    # 主题系统
└── widgets/                  # 可复用组件
    ├── chat/                 # 对话 UI
    ├── common/               # 通用组件
    ├── report/               # 报告列表、详情、artifact 查看器
    ├── settings/             # 设置 UI
    └── sidebar/              # 会话侧边栏
```

## 后端接口

### Agent 后端

Agent 后端用于对话、报告、健康检查、统计和索引更新。

| 功能 | 方法 | 路径 |
|------|------|------|
| 发送消息 | POST | `/api/chat` |
| 获取会话历史 | GET | `/api/chat/{session_id}/history` |
| 删除会话历史 | DELETE | `/api/chat/{session_id}/history` |
| 健康检查 | GET | `/health` |
| 系统统计 | GET | `/api/stats` |
| 提交索引更新 | POST | `/api/update_index` |
| 查询索引更新状态 | GET | `/api/update_index/status/{task_id}` |
| 创建报告 | POST | `/api/reports` |
| 查询报告状态 | GET | `/api/reports/{report_id}` |
| 读取报告产物 | GET | `/api/reports/{report_id}/artifacts/{artifact_name}` |
| 重试报告 | POST | `/api/reports/{report_id}/retry` |
| 取消报告 | POST | `/api/reports/{report_id}/cancel` |

### STT 后端

默认端点：

```text
/asr
```

请求方式：multipart form，包含：

- `file`
- `language`
- `vad_filter`
- `word_timestamps`

### TTS 后端

TTS 使用 OpenAI-compatible speech 风格接口。

默认 speech 路径：

```text
/v1/audio/speech
```

请求体示例：

```json
{
  "input": "要播放的文本",
  "voice": "zf_094",
  "response_format": "mp3"
}
```

说明：

- TTS 地址可以填服务根地址，例如 `http://localhost:8880`。
- 也可以填完整接口地址，例如 `http://localhost:8880/v1/audio/speech`。
- 如果只填根地址，客户端会自动补 `/v1/audio/speech`。
- `voice` 当前默认 `zf_094`，保留可配置设计。
- `response_format` 固定为 `mp3`。

## 配置说明

默认配置位于 `lib/config/app_config.dart`，也可在应用内“设置 > 后端配置”中修改。

| 配置项 | 默认值 | 用途 |
|--------|--------|------|
| Agent 后端地址 | `http://localhost:5000` | 对话、报告、健康检查、统计、索引更新 |
| STT 后端地址 | `http://localhost:9000` | 语音转文字 |
| TTS 后端地址 | `http://localhost:8880` | 语音合成 |
| TTS voice | `zf_094` | 语音合成声音 |
| TTS response format | `mp3` | 固定输出格式 |

连接测试规则：

- Agent：请求 `{agent}/health`，需要 2xx。
- STT：请求 `{stt}/asr`，非 5xx 视为服务可达。
- TTS：请求 speech 地址，非 5xx 视为服务可达。

## 环境要求

- Flutter SDK >= 3.10.7
- Dart SDK >= 3.10.7
- macOS: Xcode 15+, CocoaPods
- Windows: Visual Studio 2022
- Linux: clang, cmake, ninja-build

## 安装与配置

### 1. 克隆项目

```bash
git clone <repository-url>
cd qa_agent_flutter
```

### 2. 安装依赖

```bash
flutter pub get
```

### 3. 生成代码

修改 `@freezed` / `json_serializable` 模型后需要重新生成代码：

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. 平台特定配置

**macOS**:

```bash
# 安装 CocoaPods（如未安装）
brew install cocoapods

# 安装原生依赖
cd macos && pod install && cd ..
```

**iOS**:

```bash
cd ios && pod install && cd ..
```

## 运行项目

```bash
# macOS
flutter run -d macos

# Windows
flutter run -d windows

# Linux
flutter run -d linux

# Web
flutter run -d chrome

# iOS 模拟器
flutter run -d ios

# Android 模拟器
flutter run -d android

# 查看可用设备
flutter devices
```

## 验证

```bash
# 静态检查
flutter analyze

# 单元测试 / Widget 测试
flutter test
```

## 调试

### Hot Reload / Restart

运行中按键：

- `r` - Hot reload（保留状态）
- `R` - Hot restart（重置状态）
- `q` - 退出

### DevTools

```bash
flutter pub global activate devtools
flutter pub global run devtools
```

运行时终端会显示 DevTools URL：

```text
The Flutter DevTools debugger and profiler is available at: http://127.0.0.1:xxxx/...
```

### 日志输出

应用内日志通过 `lib/core/utils/logger.dart` 统一管理，调试时查看终端输出：

```text
flutter: [2026-01-25T15:43:10][DEBUG] 消息内容...
```

## 权限配置

**macOS** (`macos/Runner/*.entitlements`):

- 网络访问：`com.apple.security.network.client`
- 麦克风：`com.apple.security.device.audio-input`

**iOS** (`ios/Runner/Info.plist`):

- `NSMicrophoneUsageDescription`

**Android** (`android/app/src/main/AndroidManifest.xml`):

- `RECORD_AUDIO`
- `INTERNET`

## 构建发布

```bash
# macOS
flutter build macos --release

# Windows
flutter build windows --release

# Linux
flutter build linux --release

# Web
flutter build web --release

# iOS
flutter build ios --release

# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release
```

构建产物位于 `build/` 目录。

## 常见问题

### CocoaPods 未安装

```bash
brew install cocoapods
cd macos && pod install && cd ..
```

### 依赖版本冲突

```bash
flutter clean
flutter pub get
```

### Freezed 生成失败

```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### TTS 无法播放

1. 在设置中检查 TTS 后端地址。
2. 如果只填写根地址，确认服务实际提供 `/v1/audio/speech`。
3. 确认 TTS 服务返回的是 `mp3` 二进制音频。

### STT 转写失败

1. 检查麦克风权限。
2. 检查 STT 后端地址和 `/asr` 服务。
3. 确认录音时长和文件大小未超过配置限制。
