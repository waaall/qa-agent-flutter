// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LlmHealthInfo _$LlmHealthInfoFromJson(Map<String, dynamic> json) {
  return _LlmHealthInfo.fromJson(json);
}

/// @nodoc
mixin _$LlmHealthInfo {
  String? get provider => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_model')
  String? get currentModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_budget')
  Map<String, dynamic>? get tokenBudget => throw _privateConstructorUsedError;

  /// Serializes this LlmHealthInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LlmHealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LlmHealthInfoCopyWith<LlmHealthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LlmHealthInfoCopyWith<$Res> {
  factory $LlmHealthInfoCopyWith(
    LlmHealthInfo value,
    $Res Function(LlmHealthInfo) then,
  ) = _$LlmHealthInfoCopyWithImpl<$Res, LlmHealthInfo>;
  @useResult
  $Res call({
    String? provider,
    bool ready,
    @JsonKey(name: 'current_model') String? currentModel,
    @JsonKey(name: 'token_budget') Map<String, dynamic>? tokenBudget,
  });
}

/// @nodoc
class _$LlmHealthInfoCopyWithImpl<$Res, $Val extends LlmHealthInfo>
    implements $LlmHealthInfoCopyWith<$Res> {
  _$LlmHealthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LlmHealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? ready = null,
    Object? currentModel = freezed,
    Object? tokenBudget = freezed,
  }) {
    return _then(
      _value.copyWith(
            provider: freezed == provider
                ? _value.provider
                : provider // ignore: cast_nullable_to_non_nullable
                      as String?,
            ready: null == ready
                ? _value.ready
                : ready // ignore: cast_nullable_to_non_nullable
                      as bool,
            currentModel: freezed == currentModel
                ? _value.currentModel
                : currentModel // ignore: cast_nullable_to_non_nullable
                      as String?,
            tokenBudget: freezed == tokenBudget
                ? _value.tokenBudget
                : tokenBudget // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LlmHealthInfoImplCopyWith<$Res>
    implements $LlmHealthInfoCopyWith<$Res> {
  factory _$$LlmHealthInfoImplCopyWith(
    _$LlmHealthInfoImpl value,
    $Res Function(_$LlmHealthInfoImpl) then,
  ) = __$$LlmHealthInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? provider,
    bool ready,
    @JsonKey(name: 'current_model') String? currentModel,
    @JsonKey(name: 'token_budget') Map<String, dynamic>? tokenBudget,
  });
}

/// @nodoc
class __$$LlmHealthInfoImplCopyWithImpl<$Res>
    extends _$LlmHealthInfoCopyWithImpl<$Res, _$LlmHealthInfoImpl>
    implements _$$LlmHealthInfoImplCopyWith<$Res> {
  __$$LlmHealthInfoImplCopyWithImpl(
    _$LlmHealthInfoImpl _value,
    $Res Function(_$LlmHealthInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LlmHealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? ready = null,
    Object? currentModel = freezed,
    Object? tokenBudget = freezed,
  }) {
    return _then(
      _$LlmHealthInfoImpl(
        provider: freezed == provider
            ? _value.provider
            : provider // ignore: cast_nullable_to_non_nullable
                  as String?,
        ready: null == ready
            ? _value.ready
            : ready // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentModel: freezed == currentModel
            ? _value.currentModel
            : currentModel // ignore: cast_nullable_to_non_nullable
                  as String?,
        tokenBudget: freezed == tokenBudget
            ? _value._tokenBudget
            : tokenBudget // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LlmHealthInfoImpl implements _LlmHealthInfo {
  const _$LlmHealthInfoImpl({
    this.provider,
    this.ready = false,
    @JsonKey(name: 'current_model') this.currentModel,
    @JsonKey(name: 'token_budget') final Map<String, dynamic>? tokenBudget,
  }) : _tokenBudget = tokenBudget;

  factory _$LlmHealthInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LlmHealthInfoImplFromJson(json);

  @override
  final String? provider;
  @override
  @JsonKey()
  final bool ready;
  @override
  @JsonKey(name: 'current_model')
  final String? currentModel;
  final Map<String, dynamic>? _tokenBudget;
  @override
  @JsonKey(name: 'token_budget')
  Map<String, dynamic>? get tokenBudget {
    final value = _tokenBudget;
    if (value == null) return null;
    if (_tokenBudget is EqualUnmodifiableMapView) return _tokenBudget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LlmHealthInfo(provider: $provider, ready: $ready, currentModel: $currentModel, tokenBudget: $tokenBudget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LlmHealthInfoImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.currentModel, currentModel) ||
                other.currentModel == currentModel) &&
            const DeepCollectionEquality().equals(
              other._tokenBudget,
              _tokenBudget,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    provider,
    ready,
    currentModel,
    const DeepCollectionEquality().hash(_tokenBudget),
  );

  /// Create a copy of LlmHealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LlmHealthInfoImplCopyWith<_$LlmHealthInfoImpl> get copyWith =>
      __$$LlmHealthInfoImplCopyWithImpl<_$LlmHealthInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LlmHealthInfoImplToJson(this);
  }
}

abstract class _LlmHealthInfo implements LlmHealthInfo {
  const factory _LlmHealthInfo({
    final String? provider,
    final bool ready,
    @JsonKey(name: 'current_model') final String? currentModel,
    @JsonKey(name: 'token_budget') final Map<String, dynamic>? tokenBudget,
  }) = _$LlmHealthInfoImpl;

  factory _LlmHealthInfo.fromJson(Map<String, dynamic> json) =
      _$LlmHealthInfoImpl.fromJson;

  @override
  String? get provider;
  @override
  bool get ready;
  @override
  @JsonKey(name: 'current_model')
  String? get currentModel;
  @override
  @JsonKey(name: 'token_budget')
  Map<String, dynamic>? get tokenBudget;

  /// Create a copy of LlmHealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LlmHealthInfoImplCopyWith<_$LlmHealthInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthResponse _$HealthResponseFromJson(Map<String, dynamic> json) {
  return _HealthResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthResponse {
  String get status => throw _privateConstructorUsedError;
  String? get framework => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  LlmHealthInfo? get llm => throw _privateConstructorUsedError;
  Map<String, dynamic>? get ollama => throw _privateConstructorUsedError;
  Map<String, dynamic>? get openai => throw _privateConstructorUsedError;
  Map<String, dynamic>? get observability => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this HealthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthResponseCopyWith<HealthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthResponseCopyWith<$Res> {
  factory $HealthResponseCopyWith(
    HealthResponse value,
    $Res Function(HealthResponse) then,
  ) = _$HealthResponseCopyWithImpl<$Res, HealthResponse>;
  @useResult
  $Res call({
    String status,
    String? framework,
    String? version,
    LlmHealthInfo? llm,
    Map<String, dynamic>? ollama,
    Map<String, dynamic>? openai,
    Map<String, dynamic>? observability,
    String? timestamp,
    String? error,
  });

  $LlmHealthInfoCopyWith<$Res>? get llm;
}

/// @nodoc
class _$HealthResponseCopyWithImpl<$Res, $Val extends HealthResponse>
    implements $HealthResponseCopyWith<$Res> {
  _$HealthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? framework = freezed,
    Object? version = freezed,
    Object? llm = freezed,
    Object? ollama = freezed,
    Object? openai = freezed,
    Object? observability = freezed,
    Object? timestamp = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            framework: freezed == framework
                ? _value.framework
                : framework // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            llm: freezed == llm
                ? _value.llm
                : llm // ignore: cast_nullable_to_non_nullable
                      as LlmHealthInfo?,
            ollama: freezed == ollama
                ? _value.ollama
                : ollama // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            openai: freezed == openai
                ? _value.openai
                : openai // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            observability: freezed == observability
                ? _value.observability
                : observability // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            timestamp: freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LlmHealthInfoCopyWith<$Res>? get llm {
    if (_value.llm == null) {
      return null;
    }

    return $LlmHealthInfoCopyWith<$Res>(_value.llm!, (value) {
      return _then(_value.copyWith(llm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthResponseImplCopyWith<$Res>
    implements $HealthResponseCopyWith<$Res> {
  factory _$$HealthResponseImplCopyWith(
    _$HealthResponseImpl value,
    $Res Function(_$HealthResponseImpl) then,
  ) = __$$HealthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String status,
    String? framework,
    String? version,
    LlmHealthInfo? llm,
    Map<String, dynamic>? ollama,
    Map<String, dynamic>? openai,
    Map<String, dynamic>? observability,
    String? timestamp,
    String? error,
  });

  @override
  $LlmHealthInfoCopyWith<$Res>? get llm;
}

/// @nodoc
class __$$HealthResponseImplCopyWithImpl<$Res>
    extends _$HealthResponseCopyWithImpl<$Res, _$HealthResponseImpl>
    implements _$$HealthResponseImplCopyWith<$Res> {
  __$$HealthResponseImplCopyWithImpl(
    _$HealthResponseImpl _value,
    $Res Function(_$HealthResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? framework = freezed,
    Object? version = freezed,
    Object? llm = freezed,
    Object? ollama = freezed,
    Object? openai = freezed,
    Object? observability = freezed,
    Object? timestamp = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$HealthResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        framework: freezed == framework
            ? _value.framework
            : framework // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        llm: freezed == llm
            ? _value.llm
            : llm // ignore: cast_nullable_to_non_nullable
                  as LlmHealthInfo?,
        ollama: freezed == ollama
            ? _value._ollama
            : ollama // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        openai: freezed == openai
            ? _value._openai
            : openai // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        observability: freezed == observability
            ? _value._observability
            : observability // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        timestamp: freezed == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthResponseImpl implements _HealthResponse {
  const _$HealthResponseImpl({
    required this.status,
    this.framework,
    this.version,
    this.llm,
    final Map<String, dynamic>? ollama,
    final Map<String, dynamic>? openai,
    final Map<String, dynamic>? observability,
    this.timestamp,
    this.error,
  }) : _ollama = ollama,
       _openai = openai,
       _observability = observability;

  factory _$HealthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? framework;
  @override
  final String? version;
  @override
  final LlmHealthInfo? llm;
  final Map<String, dynamic>? _ollama;
  @override
  Map<String, dynamic>? get ollama {
    final value = _ollama;
    if (value == null) return null;
    if (_ollama is EqualUnmodifiableMapView) return _ollama;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _openai;
  @override
  Map<String, dynamic>? get openai {
    final value = _openai;
    if (value == null) return null;
    if (_openai is EqualUnmodifiableMapView) return _openai;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _observability;
  @override
  Map<String, dynamic>? get observability {
    final value = _observability;
    if (value == null) return null;
    if (_observability is EqualUnmodifiableMapView) return _observability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? timestamp;
  @override
  final String? error;

  @override
  String toString() {
    return 'HealthResponse(status: $status, framework: $framework, version: $version, llm: $llm, ollama: $ollama, openai: $openai, observability: $observability, timestamp: $timestamp, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.framework, framework) ||
                other.framework == framework) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.llm, llm) || other.llm == llm) &&
            const DeepCollectionEquality().equals(other._ollama, _ollama) &&
            const DeepCollectionEquality().equals(other._openai, _openai) &&
            const DeepCollectionEquality().equals(
              other._observability,
              _observability,
            ) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    framework,
    version,
    llm,
    const DeepCollectionEquality().hash(_ollama),
    const DeepCollectionEquality().hash(_openai),
    const DeepCollectionEquality().hash(_observability),
    timestamp,
    error,
  );

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthResponseImplCopyWith<_$HealthResponseImpl> get copyWith =>
      __$$HealthResponseImplCopyWithImpl<_$HealthResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthResponseImplToJson(this);
  }
}

abstract class _HealthResponse implements HealthResponse {
  const factory _HealthResponse({
    required final String status,
    final String? framework,
    final String? version,
    final LlmHealthInfo? llm,
    final Map<String, dynamic>? ollama,
    final Map<String, dynamic>? openai,
    final Map<String, dynamic>? observability,
    final String? timestamp,
    final String? error,
  }) = _$HealthResponseImpl;

  factory _HealthResponse.fromJson(Map<String, dynamic> json) =
      _$HealthResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get framework;
  @override
  String? get version;
  @override
  LlmHealthInfo? get llm;
  @override
  Map<String, dynamic>? get ollama;
  @override
  Map<String, dynamic>? get openai;
  @override
  Map<String, dynamic>? get observability;
  @override
  String? get timestamp;
  @override
  String? get error;

  /// Create a copy of HealthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthResponseImplCopyWith<_$HealthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatsResponse _$StatsResponseFromJson(Map<String, dynamic> json) {
  return _StatsResponse.fromJson(json);
}

/// @nodoc
mixin _$StatsResponse {
  bool get success => throw _privateConstructorUsedError;
  Map<String, dynamic> get stats => throw _privateConstructorUsedError;

  /// Serializes this StatsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsResponseCopyWith<StatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsResponseCopyWith<$Res> {
  factory $StatsResponseCopyWith(
    StatsResponse value,
    $Res Function(StatsResponse) then,
  ) = _$StatsResponseCopyWithImpl<$Res, StatsResponse>;
  @useResult
  $Res call({bool success, Map<String, dynamic> stats});
}

/// @nodoc
class _$StatsResponseCopyWithImpl<$Res, $Val extends StatsResponse>
    implements $StatsResponseCopyWith<$Res> {
  _$StatsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? stats = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatsResponseImplCopyWith<$Res>
    implements $StatsResponseCopyWith<$Res> {
  factory _$$StatsResponseImplCopyWith(
    _$StatsResponseImpl value,
    $Res Function(_$StatsResponseImpl) then,
  ) = __$$StatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Map<String, dynamic> stats});
}

/// @nodoc
class __$$StatsResponseImplCopyWithImpl<$Res>
    extends _$StatsResponseCopyWithImpl<$Res, _$StatsResponseImpl>
    implements _$$StatsResponseImplCopyWith<$Res> {
  __$$StatsResponseImplCopyWithImpl(
    _$StatsResponseImpl _value,
    $Res Function(_$StatsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? stats = null}) {
    return _then(
      _$StatsResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        stats: null == stats
            ? _value._stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsResponseImpl implements _StatsResponse {
  const _$StatsResponseImpl({
    required this.success,
    final Map<String, dynamic> stats = const {},
  }) : _stats = stats;

  factory _$StatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsResponseImplFromJson(json);

  @override
  final bool success;
  final Map<String, dynamic> _stats;
  @override
  @JsonKey()
  Map<String, dynamic> get stats {
    if (_stats is EqualUnmodifiableMapView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stats);
  }

  @override
  String toString() {
    return 'StatsResponse(success: $success, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_stats),
  );

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsResponseImplCopyWith<_$StatsResponseImpl> get copyWith =>
      __$$StatsResponseImplCopyWithImpl<_$StatsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsResponseImplToJson(this);
  }
}

abstract class _StatsResponse implements StatsResponse {
  const factory _StatsResponse({
    required final bool success,
    final Map<String, dynamic> stats,
  }) = _$StatsResponseImpl;

  factory _StatsResponse.fromJson(Map<String, dynamic> json) =
      _$StatsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Map<String, dynamic> get stats;

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsResponseImplCopyWith<_$StatsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranscribeResult _$TranscribeResultFromJson(Map<String, dynamic> json) {
  return _TranscribeResult.fromJson(json);
}

/// @nodoc
mixin _$TranscribeResult {
  String get text => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int? get durationMs => throw _privateConstructorUsedError;

  /// Serializes this TranscribeResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranscribeResultCopyWith<TranscribeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranscribeResultCopyWith<$Res> {
  factory $TranscribeResultCopyWith(
    TranscribeResult value,
    $Res Function(TranscribeResult) then,
  ) = _$TranscribeResultCopyWithImpl<$Res, TranscribeResult>;
  @useResult
  $Res call({
    String text,
    String? language,
    @JsonKey(name: 'duration_ms') int? durationMs,
  });
}

/// @nodoc
class _$TranscribeResultCopyWithImpl<$Res, $Val extends TranscribeResult>
    implements $TranscribeResultCopyWith<$Res> {
  _$TranscribeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? language = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(
      _value.copyWith(
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            language: freezed == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String?,
            durationMs: freezed == durationMs
                ? _value.durationMs
                : durationMs // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranscribeResultImplCopyWith<$Res>
    implements $TranscribeResultCopyWith<$Res> {
  factory _$$TranscribeResultImplCopyWith(
    _$TranscribeResultImpl value,
    $Res Function(_$TranscribeResultImpl) then,
  ) = __$$TranscribeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String text,
    String? language,
    @JsonKey(name: 'duration_ms') int? durationMs,
  });
}

/// @nodoc
class __$$TranscribeResultImplCopyWithImpl<$Res>
    extends _$TranscribeResultCopyWithImpl<$Res, _$TranscribeResultImpl>
    implements _$$TranscribeResultImplCopyWith<$Res> {
  __$$TranscribeResultImplCopyWithImpl(
    _$TranscribeResultImpl _value,
    $Res Function(_$TranscribeResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? language = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(
      _$TranscribeResultImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        language: freezed == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        durationMs: freezed == durationMs
            ? _value.durationMs
            : durationMs // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TranscribeResultImpl implements _TranscribeResult {
  const _$TranscribeResultImpl({
    required this.text,
    this.language,
    @JsonKey(name: 'duration_ms') this.durationMs,
  });

  factory _$TranscribeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranscribeResultImplFromJson(json);

  @override
  final String text;
  @override
  final String? language;
  @override
  @JsonKey(name: 'duration_ms')
  final int? durationMs;

  @override
  String toString() {
    return 'TranscribeResult(text: $text, language: $language, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscribeResultImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, language, durationMs);

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranscribeResultImplCopyWith<_$TranscribeResultImpl> get copyWith =>
      __$$TranscribeResultImplCopyWithImpl<_$TranscribeResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TranscribeResultImplToJson(this);
  }
}

abstract class _TranscribeResult implements TranscribeResult {
  const factory _TranscribeResult({
    required final String text,
    final String? language,
    @JsonKey(name: 'duration_ms') final int? durationMs,
  }) = _$TranscribeResultImpl;

  factory _TranscribeResult.fromJson(Map<String, dynamic> json) =
      _$TranscribeResultImpl.fromJson;

  @override
  String get text;
  @override
  String? get language;
  @override
  @JsonKey(name: 'duration_ms')
  int? get durationMs;

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranscribeResultImplCopyWith<_$TranscribeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
