确认，需求边界更新如下，可作为 v1.0 定稿基础。

## Flutter 客户端更新需求 v1.0

### 1. 总原则

- 只按当前后端最佳实践重新设计 Flutter 侧 API / model / service / UI。

---

## 2. 保留 / 新增功能

### 2.1 对话功能

保留聊天主功能，仅适配新版后端接口：

- `POST /api/chat`
- `GET /api/chat/{session_id}/history`
- `DELETE /api/chat/{session_id}/history`
- `GET /health`
- `GET /api/stats`
- `POST /api/update_index`
- `GET /api/update_index/status/{task_id}`

字段以新版后端为准，例如：

- `session_id`
- `message_count`
- `additional_kwargs`
- `enhancement_applied`
- `matched_entries`

不再保留旧字段兼容，如 `sessionId`、`queryType`、`enginesUsed` 等旧接口设计。

---

### 2.2 Report 功能

新增报告工作区，参考 Tauri app 的 report 设计。

支持接口：

- `POST /api/reports`
- `GET /api/reports/{report_id}`
- `GET /api/reports/{report_id}/artifacts/{artifact_name}`
- `POST /api/reports/{report_id}/retry`
- `POST /api/reports/{report_id}/cancel`

报告列表：

- **只做本地持久化**。
- 后端没有 list 接口，不额外要求后端支持。
- 本地保存报告概要：
  - `report_id`
  - `report_type`
  - `title`
  - `question`
  - `status`
  - `created_at`
  - `last_accessed`

报告详情：

- 状态展示。
- 进度展示。
- artifact 列表。
- Markdown 渲染。
- JSON 格式化展示。
- 文本展示。
- artifact 下载。
- 取消 / 重试 / 刷新。

---

### 2.3 TTS 功能

新增助手回答语音播放。

设计：

- TTS 后端独立配置。
- voice **预留可配置设计**，但首版 UI / 默认配置只有一个默认值：
  - `zf_094`
- `response_format` 固定：
  - `mp3`
- TTS 接口采用 OpenAI-compatible speech 风格：
  - `/v1/audio/speech`
- TTS 地址支持两种输入：
  - 服务根地址：`http://host:port`
  - 完整 speech 地址：`http://host:port/v1/audio/speech`
- 如果用户只填服务根地址，客户端自动补 `/v1/audio/speech`。

播放交互：

- 仅助手消息显示播放按钮。
- loading / error / 空内容不显示。
- 同一时间只播放一条回答。
- 点击播放中消息时停止播放。
- 点击其他消息时先停止旧音频，再播放新音频。
- 不做音频缓存。

---

### 2.4 STT 功能

保留现有语音转文字能力，但纳入三后端配置体系。

STT 配置：

- STT 后端地址可配置。
- endpoint 默认 `/asr`。
- 继续使用录音后 multipart 上传转写。

---

### 2.5 三后端配置

设置页升级为三类后端配置：

1. Agent 后端地址
   用于聊天、报告、系统状态、索引更新。

2. STT 后端地址
   用于语音转文字。

3. TTS 后端地址
   用于语音合成。

每项需要：

- 输入框。
- 保存。
- 测试连接。
- 本地持久化。
- 重启后恢复。

---

## 3. 明确不做

### 3.1 不做上传文档

- 不支持 `/api/upload`。
- 不支持上传 UI。
- 不保留旧上传任务逻辑作为可见功能。

### 3.2 不做知识文档列表展示

- 暂不展示 `/api/documents`。
- 暂不做知识文档管理页面。

### 3.3 不做数据库信息功能

- 不需要数据库信息 UI。
- 不需要数据库查询面板。
- `/api/database/info` 不纳入本轮 Flutter 功能范围。

### 3.4 不做旧 API 兼容

- 不为了旧 agent 接口保留 fallback。
- 不做双模型解析。
- 不保留过时字段映射。
- 直接以当前后端接口为唯一真相。

---

## 4. 建议后的实施拆分

后续真正实施时建议分 4 步：

1. **API / Model 重构**
   - 清理旧接口模型。
   - 统一 snake_case JSON。
   - 移除上传、数据库信息相关暴露入口。

2. **三后端配置**
   - Agent / STT / TTS 配置模型。
   - 设置页更新。
   - 连接测试。

3. **Report 工作区**
   - Report model / service / provider / storage。
   - 报告列表和报告详情 UI。

4. **TTS 播放**
   - TTS service。
   - 播放状态 provider。
   - 助手消息播放按钮。