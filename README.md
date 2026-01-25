# QA Agent Flutter

智能问答系统 Flutter 跨平台版本，支持 iOS、Android、macOS、Windows、Linux 和 Web。

## 技术栈

| 模块 | 技术方案 |
|------|----------|
| 状态管理 | flutter_riverpod |
| 网络请求 | dio |
| 路由 | go_router |
| 本地存储 | shared_preferences + hive |
| Markdown | flutter_markdown + flutter_highlight |
| 文件选择 | file_picker |
| 桌面窗口 | window_manager |
| JSON 序列化 | freezed + json_serializable |
| 语音录制 | record |

## 项目结构

```
lib/
├── main.dart                 # 应用入口
├── app.dart                  # App 根组件
├── config/                   # 配置层
│   ├── app_config.dart       # API URL、超时配置
│   ├── endpoints.dart        # API 端点常量
│   └── constants.dart        # UI 常量
├── core/                     # 核心基础设施
│   ├── network/              # 网络层 (Dio 封装)
│   ├── storage/              # 存储层 (SharedPreferences + Hive)
│   ├── audio/                # 音频处理
│   └── utils/                # 工具类
├── models/                   # 数据模型 (freezed)
├── services/                 # API 服务层
├── providers/                # Riverpod 状态管理
│   ├── chat/                 # 聊天状态
│   ├── session/              # 会话管理
│   ├── theme/                # 主题状态
│   ├── config/               # 后端配置
│   ├── stt/                  # 语音转文字
│   └── document/             # 文档任务队列
├── theme/                    # 主题系统
├── widgets/                  # 可复用组件
├── screens/                  # 页面
└── router/                   # 路由配置
```

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

### 3. 生成代码 (freezed 模型)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. 平台特定配置

**macOS**:
```bash
# 安装 CocoaPods (如未安装)
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

## 调试

### Hot Reload / Restart

运行中按键:
- `r` - Hot reload (保留状态)
- `R` - Hot restart (重置状态)
- `q` - 退出

### DevTools

```bash
# 打开 DevTools
flutter pub global activate devtools
flutter pub global run devtools
```

运行时终端会显示 DevTools URL:
```
The Flutter DevTools debugger and profiler is available at: http://127.0.0.1:xxxx/...
```

### 日志输出

应用内日志通过 `lib/core/utils/logger.dart` 统一管理，调试时查看终端输出:
```
flutter: [2026-01-25T15:43:10][DEBUG] 消息内容...
```

### VS Code 调试

`.vscode/launch.json`:
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "qa_agent_flutter (macOS)",
      "request": "launch",
      "type": "dart",
      "deviceId": "macos"
    },
    {
      "name": "qa_agent_flutter (Chrome)",
      "request": "launch",
      "type": "dart",
      "deviceId": "chrome"
    }
  ]
}
```

## 代码生成

修改 `@freezed` 模型后需重新生成:

```bash
# 一次性生成
flutter pub run build_runner build --delete-conflicting-outputs

# 监听模式 (开发时推荐)
flutter pub run build_runner watch --delete-conflicting-outputs
```

## 配置说明

### 后端地址

默认后端地址在 `lib/config/app_config.dart` 中配置，也可在应用内设置界面修改。

### STT 服务

语音转文字服务配置:
- 默认地址: `http://192.168.50.50:9000`
- 端点: `/asr`
- 音频格式: WAV, 16kHz, 单声道

### 权限配置

**macOS** (`macos/Runner/*.entitlements`):
- 网络访问: `com.apple.security.network.client`
- 麦克风: `com.apple.security.device.audio-input`

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

### freezed 生成失败

```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

