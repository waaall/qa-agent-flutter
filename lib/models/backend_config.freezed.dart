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
  // STT 服务地址
  String get baseUrl => throw _privateConstructorUsedError; // ASR 端点
  String get endpoint => throw _privateConstructorUsedError; // 语言
  String get language => throw _privateConstructorUsedError; // 是否启用 VAD 过滤
  bool get vadFilter => throw _privateConstructorUsedError; // 最大录音时长（毫秒）
  int get maxDurationMs => throw _privateConstructorUsedError; // 最大音频大小（字节）
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
    this.maxDurationMs = 60000,
    this.maxSizeBytes = 10485760,
  });

  factory _$STTConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$STTConfigImplFromJson(json);

  // STT 服务地址
  @override
  @JsonKey()
  final String baseUrl;
  // ASR 端点
  @override
  @JsonKey()
  final String endpoint;
  // 语言
  @override
  @JsonKey()
  final String language;
  // 是否启用 VAD 过滤
  @override
  @JsonKey()
  final bool vadFilter;
  // 最大录音时长（毫秒）
  @override
  @JsonKey()
  final int maxDurationMs;
  // 最大音频大小（字节）
  @override
  @JsonKey()
  final int maxSizeBytes;

  @override
  String toString() {
    return 'STTConfig(baseUrl: $baseUrl, endpoint: $endpoint, language: $language, vadFilter: $vadFilter, maxDurationMs: $maxDurationMs, maxSizeBytes: $maxSizeBytes)';
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
    final int maxDurationMs,
    final int maxSizeBytes,
  }) = _$STTConfigImpl;

  factory _STTConfig.fromJson(Map<String, dynamic> json) =
      _$STTConfigImpl.fromJson;

  // STT 服务地址
  @override
  String get baseUrl; // ASR 端点
  @override
  String get endpoint; // 语言
  @override
  String get language; // 是否启用 VAD 过滤
  @override
  bool get vadFilter; // 最大录音时长（毫秒）
  @override
  int get maxDurationMs; // 最大音频大小（字节）
  @override
  int get maxSizeBytes;

  /// Create a copy of STTConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$STTConfigImplCopyWith<_$STTConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BackendConfig _$BackendConfigFromJson(Map<String, dynamic> json) {
  return _BackendConfig.fromJson(json);
}

/// @nodoc
mixin _$BackendConfig {
  // API 后端地址
  String get apiBaseUrl => throw _privateConstructorUsedError; // STT 配置
  STTConfig? get sttConfig => throw _privateConstructorUsedError;

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
  $Res call({String apiBaseUrl, STTConfig? sttConfig});

  $STTConfigCopyWith<$Res>? get sttConfig;
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
  $Res call({Object? apiBaseUrl = null, Object? sttConfig = freezed}) {
    return _then(
      _value.copyWith(
            apiBaseUrl: null == apiBaseUrl
                ? _value.apiBaseUrl
                : apiBaseUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            sttConfig: freezed == sttConfig
                ? _value.sttConfig
                : sttConfig // ignore: cast_nullable_to_non_nullable
                      as STTConfig?,
          )
          as $Val,
    );
  }

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $STTConfigCopyWith<$Res>? get sttConfig {
    if (_value.sttConfig == null) {
      return null;
    }

    return $STTConfigCopyWith<$Res>(_value.sttConfig!, (value) {
      return _then(_value.copyWith(sttConfig: value) as $Val);
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
  $Res call({String apiBaseUrl, STTConfig? sttConfig});

  @override
  $STTConfigCopyWith<$Res>? get sttConfig;
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
  $Res call({Object? apiBaseUrl = null, Object? sttConfig = freezed}) {
    return _then(
      _$BackendConfigImpl(
        apiBaseUrl: null == apiBaseUrl
            ? _value.apiBaseUrl
            : apiBaseUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        sttConfig: freezed == sttConfig
            ? _value.sttConfig
            : sttConfig // ignore: cast_nullable_to_non_nullable
                  as STTConfig?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BackendConfigImpl implements _BackendConfig {
  const _$BackendConfigImpl({required this.apiBaseUrl, this.sttConfig});

  factory _$BackendConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackendConfigImplFromJson(json);

  // API 后端地址
  @override
  final String apiBaseUrl;
  // STT 配置
  @override
  final STTConfig? sttConfig;

  @override
  String toString() {
    return 'BackendConfig(apiBaseUrl: $apiBaseUrl, sttConfig: $sttConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackendConfigImpl &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.sttConfig, sttConfig) ||
                other.sttConfig == sttConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiBaseUrl, sttConfig);

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
    required final String apiBaseUrl,
    final STTConfig? sttConfig,
  }) = _$BackendConfigImpl;

  factory _BackendConfig.fromJson(Map<String, dynamic> json) =
      _$BackendConfigImpl.fromJson;

  // API 后端地址
  @override
  String get apiBaseUrl; // STT 配置
  @override
  STTConfig? get sttConfig;

  /// Create a copy of BackendConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackendConfigImplCopyWith<_$BackendConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
