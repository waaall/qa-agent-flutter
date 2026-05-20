// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backend_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

STTConfig _$STTConfigFromJson(Map<String, dynamic> json) {
  return _STTConfig.fromJson(json);
}

/// @nodoc
mixin _$STTConfig {
  // STT 服务根地址。
  String get baseUrl => throw _privateConstructorUsedError; // ASR 端点。
  String get endpoint => throw _privateConstructorUsedError; // 语言。
  String get language => throw _privateConstructorUsedError; // 是否启用 VAD 过滤。
  bool get vadFilter => throw _privateConstructorUsedError; // 是否返回词级时间戳。
  bool get wordTimestamps => throw _privateConstructorUsedError; // 最大录音时长（毫秒）。
  int get maxDurationMs => throw _privateConstructorUsedError; // 最大音频大小（字节）。
  int get maxSizeBytes => throw _privateConstructorUsedError;

  /// Serializes this STTConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $STTConfigCopyWith<STTConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $STTConfigCopyWith<$Res> {
  factory $STTConfigCopyWith(STTConfig value, $Res Function(STTConfig) then) =
      _$STTConfigCopyWithImpl<$Res, STTConfig>;
  @useResult
  $Res call({
    String baseUrl,
    String endpoint,
    String language,
    bool vadFilter,
    bool wordTimestamps,
    int maxDurationMs,
    int maxSizeBytes,
  });
}

/// @nodoc
class _$STTConfigCopyWithImpl<$Res, $Val extends STTConfig>
    implements $STTConfigCopyWith<$Res> {
  _$STTConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? endpoint = null,
    Object? language = null,
    Object? vadFilter = null,
    Object? wordTimestamps = null,
    Object? maxDurationMs = null,
    Object? maxSizeBytes = null,
  }) {
    return _then(
      _value.copyWith(
            baseUrl: null == baseUrl
                ? _value.baseUrl
                : baseUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            endpoint: null == endpoint
                ? _value.endpoint
                : endpoint // ignore: cast_nullable_to_non_nullable
                      as String,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            vadFilter: null == vadFilter
                ? _value.vadFilter
                : vadFilter // ignore: cast_nullable_to_non_nullable
                      as bool,
            wordTimestamps: null == wordTimestamps
                ? _value.wordTimestamps
                : wordTimestamps // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxDurationMs: null == maxDurationMs
                ? _value.maxDurationMs
                : maxDurationMs // ignore: cast_nullable_to_non_nullable
                      as int,
            maxSizeBytes: null == maxSizeBytes
                ? _value.maxSizeBytes
                : maxSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$STTConfigImplCopyWith<$Res>
    implements $STTConfigCopyWith<$Res> {
  factory _$$STTConfigImplCopyWith(
    _$STTConfigImpl value,
    $Res Function(_$STTConfigImpl) then,
  ) = __$$STTConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String baseUrl,
    String endpoint,
    String language,
    bool vadFilter,
    bool wordTimestamps,
    int maxDurationMs,
    int maxSizeBytes,
  });
}

/// @nodoc
class __$$STTConfigImplCopyWithImpl<$Res>
    extends _$STTConfigCopyWithImpl<$Res, _$STTConfigImpl>
    implements _$$STTConfigImplCopyWith<$Res> {
  __$$STTConfigImplCopyWithImpl(
    _$STTConfigImpl _value,
    $Res Function(_$STTConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? endpoint = null,
    Object? language = null,
    Object? vadFilter = null,
    Object? wordTimestamps = null,
    Object? maxDurationMs = null,
    Object? maxSizeBytes = null,
  }) {
    return _then(
      _$STTConfigImpl(
        baseUrl: null == baseUrl
            ? _value.baseUrl
            : baseUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        endpoint: null == endpoint
            ? _value.endpoint
            : endpoint // ignore: cast_nullable_to_non_nullable
                  as String,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        vadFilter: null == vadFilter
            ? _value.vadFilter
            : vadFilter // ignore: cast_nullable_to_non_nullable
                  as bool,
        wordTimestamps: null == wordTimestamps
            ? _value.wordTimestamps
            : wordTimestamps // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxDurationMs: null == maxDurationMs
            ? _value.maxDurationMs
            : maxDurationMs // ignore: cast_nullable_to_non_nullable
                  as int,
        maxSizeBytes: null == maxSizeBytes
            ? _value.maxSizeBytes
            : maxSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$STTConfigImpl implements _STTConfig {
  const _$STTConfigImpl({
    this.baseUrl = AppConfig.defaultSttBaseUrl,
    this.endpoint = '/asr',
    this.language = 'zh',
    this.vadFilter = true,
    this.wordTimestamps = true,
    this.maxDurationMs = AppConfig.maxRecordDuration,
    this.maxSizeBytes = AppConfig.maxAudioSize,
  });

  factory _$STTConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$STTConfigImplFromJson(json);

  // STT 服务根地址。
  @override
  @JsonKey()
  final String baseUrl;
  // ASR 端点。
  @override
  @JsonKey()
  final String endpoint;
  // 语言。
  @override
  @JsonKey()
  final String language;
  // 是否启用 VAD 过滤。
  @override
  @JsonKey()
  final bool vadFilter;
  // 是否返回词级时间戳。
  @override
  @JsonKey()
  final bool wordTimestamps;
  // 最大录音时长（毫秒）。
  @override
  @JsonKey()
  final int maxDurationMs;
  // 最大音频大小（字节）。
  @override
  @JsonKey()
  final int maxSizeBytes;

  @override
  String toString() {
    return 'STTConfig(baseUrl: $baseUrl, endpoint: $endpoint, language: $language, vadFilter: $vadFilter, wordTimestamps: $wordTimestamps, maxDurationMs: $maxDurationMs, maxSizeBytes: $maxSizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$STTConfigImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.vadFilter, vadFilter) ||
                other.vadFilter == vadFilter) &&
            (identical(other.wordTimestamps, wordTimestamps) ||
                other.wordTimestamps == wordTimestamps) &&
            (identical(other.maxDurationMs, maxDurationMs) ||
                other.maxDurationMs == maxDurationMs) &&
            (identical(other.maxSizeBytes, maxSizeBytes) ||
                other.maxSizeBytes == maxSizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    baseUrl,
    endpoint,
    language,
    vadFilter,
    wordTimestamps,
    maxDurationMs,
    maxSizeBytes,
  );

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$STTConfigImplCopyWith<_$STTConfigImpl> get copyWith =>
      __$$STTConfigImplCopyWithImpl<_$STTConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$STTConfigImplToJson(this);
  }
}

abstract class _STTConfig implements STTConfig {
  const factory _STTConfig({
    final String baseUrl,
    final String endpoint,
    final String language,
    final bool vadFilter,
    final bool wordTimestamps,
    final int maxDurationMs,
    final int maxSizeBytes,
  }) = _$STTConfigImpl;

  factory _STTConfig.fromJson(Map<String, dynamic> json) =
      _$STTConfigImpl.fromJson;

  // STT 服务根地址。
  @override
  String get baseUrl; // ASR 端点。
  @override
  String get endpoint; // 语言。
  @override
  String get language; // 是否启用 VAD 过滤。
  @override
  bool get vadFilter; // 是否返回词级时间戳。
  @override
  bool get wordTimestamps; // 最大录音时长（毫秒）。
  @override
  int get maxDurationMs; // 最大音频大小（字节）。
  @override
  int get maxSizeBytes;

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$STTConfigImplCopyWith<_$STTConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TTSConfig _$TTSConfigFromJson(Map<String, dynamic> json) {
  return _TTSConfig.fromJson(json);
}

/// @nodoc
mixin _$TTSConfig {
  // TTS 服务根地址或完整 speech 接口地址。
  String get baseUrl =>
      throw _privateConstructorUsedError; // 预留可配置声音，首版默认 zf_094。
  String get voice => throw _privateConstructorUsedError;

  /// Serializes this TTSConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TTSConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TTSConfigCopyWith<TTSConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TTSConfigCopyWith<$Res> {
  factory $TTSConfigCopyWith(TTSConfig value, $Res Function(TTSConfig) then) =
      _$TTSConfigCopyWithImpl<$Res, TTSConfig>;
  @useResult
  $Res call({String baseUrl, String voice});
}

/// @nodoc
class _$TTSConfigCopyWithImpl<$Res, $Val extends TTSConfig>
    implements $TTSConfigCopyWith<$Res> {
  _$TTSConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TTSConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? baseUrl = null, Object? voice = null}) {
    return _then(
      _value.copyWith(
            baseUrl: null == baseUrl
                ? _value.baseUrl
                : baseUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            voice: null == voice
                ? _value.voice
                : voice // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TTSConfigImplCopyWith<$Res>
    implements $TTSConfigCopyWith<$Res> {
  factory _$$TTSConfigImplCopyWith(
    _$TTSConfigImpl value,
    $Res Function(_$TTSConfigImpl) then,
  ) = __$$TTSConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseUrl, String voice});
}

/// @nodoc
class __$$TTSConfigImplCopyWithImpl<$Res>
    extends _$TTSConfigCopyWithImpl<$Res, _$TTSConfigImpl>
    implements _$$TTSConfigImplCopyWith<$Res> {
  __$$TTSConfigImplCopyWithImpl(
    _$TTSConfigImpl _value,
    $Res Function(_$TTSConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TTSConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? baseUrl = null, Object? voice = null}) {
    return _then(
      _$TTSConfigImpl(
        baseUrl: null == baseUrl
            ? _value.baseUrl
            : baseUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        voice: null == voice
            ? _value.voice
            : voice // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TTSConfigImpl implements _TTSConfig {
  const _$TTSConfigImpl({
    this.baseUrl = AppConfig.defaultTtsBaseUrl,
    this.voice = AppConfig.defaultTtsVoice,
  });

  factory _$TTSConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$TTSConfigImplFromJson(json);

  // TTS 服务根地址或完整 speech 接口地址。
  @override
  @JsonKey()
  final String baseUrl;
  // 预留可配置声音，首版默认 zf_094。
  @override
  @JsonKey()
  final String voice;

  @override
  String toString() {
    return 'TTSConfig(baseUrl: $baseUrl, voice: $voice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TTSConfigImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.voice, voice) || other.voice == voice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, voice);

  /// Create a copy of TTSConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TTSConfigImplCopyWith<_$TTSConfigImpl> get copyWith =>
      __$$TTSConfigImplCopyWithImpl<_$TTSConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TTSConfigImplToJson(this);
  }
}

abstract class _TTSConfig implements TTSConfig {
  const factory _TTSConfig({final String baseUrl, final String voice}) =
      _$TTSConfigImpl;

  factory _TTSConfig.fromJson(Map<String, dynamic> json) =
      _$TTSConfigImpl.fromJson;

  // TTS 服务根地址或完整 speech 接口地址。
  @override
  String get baseUrl; // 预留可配置声音，首版默认 zf_094。
  @override
  String get voice;

  /// Create a copy of TTSConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TTSConfigImplCopyWith<_$TTSConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BackendConfig _$BackendConfigFromJson(Map<String, dynamic> json) {
  return _BackendConfig.fromJson(json);
}

/// @nodoc
mixin _$BackendConfig {
  // Agent 后端地址，用于对话、报告、系统状态、索引更新。
  String get agentBaseUrl => throw _privateConstructorUsedError; // STT 配置。
  STTConfig get sttConfig => throw _privateConstructorUsedError; // TTS 配置。
  TTSConfig get ttsConfig => throw _privateConstructorUsedError;

  /// Serializes this BackendConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackendConfigCopyWith<BackendConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendConfigCopyWith<$Res> {
  factory $BackendConfigCopyWith(
    BackendConfig value,
    $Res Function(BackendConfig) then,
  ) = _$BackendConfigCopyWithImpl<$Res, BackendConfig>;
  @useResult
  $Res call({String agentBaseUrl, STTConfig sttConfig, TTSConfig ttsConfig});

  $STTConfigCopyWith<$Res> get sttConfig;
  $TTSConfigCopyWith<$Res> get ttsConfig;
}

/// @nodoc
class _$BackendConfigCopyWithImpl<$Res, $Val extends BackendConfig>
    implements $BackendConfigCopyWith<$Res> {
  _$BackendConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentBaseUrl = null,
    Object? sttConfig = null,
    Object? ttsConfig = null,
  }) {
    return _then(
      _value.copyWith(
            agentBaseUrl: null == agentBaseUrl
                ? _value.agentBaseUrl
                : agentBaseUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            sttConfig: null == sttConfig
                ? _value.sttConfig
                : sttConfig // ignore: cast_nullable_to_non_nullable
                      as STTConfig,
            ttsConfig: null == ttsConfig
                ? _value.ttsConfig
                : ttsConfig // ignore: cast_nullable_to_non_nullable
                      as TTSConfig,
          )
          as $Val,
    );
  }

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $STTConfigCopyWith<$Res> get sttConfig {
    return $STTConfigCopyWith<$Res>(_value.sttConfig, (value) {
      return _then(_value.copyWith(sttConfig: value) as $Val);
    });
  }

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TTSConfigCopyWith<$Res> get ttsConfig {
    return $TTSConfigCopyWith<$Res>(_value.ttsConfig, (value) {
      return _then(_value.copyWith(ttsConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BackendConfigImplCopyWith<$Res>
    implements $BackendConfigCopyWith<$Res> {
  factory _$$BackendConfigImplCopyWith(
    _$BackendConfigImpl value,
    $Res Function(_$BackendConfigImpl) then,
  ) = __$$BackendConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agentBaseUrl, STTConfig sttConfig, TTSConfig ttsConfig});

  @override
  $STTConfigCopyWith<$Res> get sttConfig;
  @override
  $TTSConfigCopyWith<$Res> get ttsConfig;
}

/// @nodoc
class __$$BackendConfigImplCopyWithImpl<$Res>
    extends _$BackendConfigCopyWithImpl<$Res, _$BackendConfigImpl>
    implements _$$BackendConfigImplCopyWith<$Res> {
  __$$BackendConfigImplCopyWithImpl(
    _$BackendConfigImpl _value,
    $Res Function(_$BackendConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentBaseUrl = null,
    Object? sttConfig = null,
    Object? ttsConfig = null,
  }) {
    return _then(
      _$BackendConfigImpl(
        agentBaseUrl: null == agentBaseUrl
            ? _value.agentBaseUrl
            : agentBaseUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        sttConfig: null == sttConfig
            ? _value.sttConfig
            : sttConfig // ignore: cast_nullable_to_non_nullable
                  as STTConfig,
        ttsConfig: null == ttsConfig
            ? _value.ttsConfig
            : ttsConfig // ignore: cast_nullable_to_non_nullable
                  as TTSConfig,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BackendConfigImpl implements _BackendConfig {
  const _$BackendConfigImpl({
    this.agentBaseUrl = AppConfig.defaultAgentBaseUrl,
    this.sttConfig = const STTConfig(),
    this.ttsConfig = const TTSConfig(),
  });

  factory _$BackendConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackendConfigImplFromJson(json);

  // Agent 后端地址，用于对话、报告、系统状态、索引更新。
  @override
  @JsonKey()
  final String agentBaseUrl;
  // STT 配置。
  @override
  @JsonKey()
  final STTConfig sttConfig;
  // TTS 配置。
  @override
  @JsonKey()
  final TTSConfig ttsConfig;

  @override
  String toString() {
    return 'BackendConfig(agentBaseUrl: $agentBaseUrl, sttConfig: $sttConfig, ttsConfig: $ttsConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackendConfigImpl &&
            (identical(other.agentBaseUrl, agentBaseUrl) ||
                other.agentBaseUrl == agentBaseUrl) &&
            (identical(other.sttConfig, sttConfig) ||
                other.sttConfig == sttConfig) &&
            (identical(other.ttsConfig, ttsConfig) ||
                other.ttsConfig == ttsConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, agentBaseUrl, sttConfig, ttsConfig);

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackendConfigImplCopyWith<_$BackendConfigImpl> get copyWith =>
      __$$BackendConfigImplCopyWithImpl<_$BackendConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackendConfigImplToJson(this);
  }
}

abstract class _BackendConfig implements BackendConfig {
  const factory _BackendConfig({
    final String agentBaseUrl,
    final STTConfig sttConfig,
    final TTSConfig ttsConfig,
  }) = _$BackendConfigImpl;

  factory _BackendConfig.fromJson(Map<String, dynamic> json) =
      _$BackendConfigImpl.fromJson;

  // Agent 后端地址，用于对话、报告、系统状态、索引更新。
  @override
  String get agentBaseUrl; // STT 配置。
  @override
  STTConfig get sttConfig; // TTS 配置。
  @override
  TTSConfig get ttsConfig;

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackendConfigImplCopyWith<_$BackendConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
