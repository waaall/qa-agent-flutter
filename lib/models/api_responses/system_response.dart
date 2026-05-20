// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_response.freezed.dart';
part 'system_response.g.dart';

/// LLM 健康信息。
@freezed
class LlmHealthInfo with _$LlmHealthInfo {
  const factory LlmHealthInfo({
    String? provider,
    @Default(false) bool ready,
    @JsonKey(name: 'current_model') String? currentModel,
    @JsonKey(name: 'token_budget') Map<String, dynamic>? tokenBudget,
  }) = _LlmHealthInfo;

  factory LlmHealthInfo.fromJson(Map<String, dynamic> json) =>
      _$LlmHealthInfoFromJson(json);
}

/// 健康检查响应。
@freezed
class HealthResponse with _$HealthResponse {
  const factory HealthResponse({
    required String status,
    String? framework,
    String? version,
    LlmHealthInfo? llm,
    Map<String, dynamic>? ollama,
    Map<String, dynamic>? openai,
    Map<String, dynamic>? observability,
    String? timestamp,
    String? error,
  }) = _HealthResponse;

  factory HealthResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthResponseFromJson(json);
}

/// 系统统计响应：后端 stats 内部结构可能随索引实现扩展，因此保留 Map。
@freezed
class StatsResponse with _$StatsResponse {
  const factory StatsResponse({
    required bool success,
    @Default({}) Map<String, dynamic> stats,
  }) = _StatsResponse;

  factory StatsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);
}

/// STT 转写结果。
@freezed
class TranscribeResult with _$TranscribeResult {
  const factory TranscribeResult({
    required String text,
    String? language,
    @JsonKey(name: 'duration_ms') int? durationMs,
  }) = _TranscribeResult;

  factory TranscribeResult.fromJson(Map<String, dynamic> json) =>
      _$TranscribeResultFromJson(json);
}
