// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateIndexResponse _$UpdateIndexResponseFromJson(Map<String, dynamic> json) {
  return _UpdateIndexResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateIndexResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_url')
  String? get statusUrl => throw _privateConstructorUsedError;

  /// Serializes this UpdateIndexResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateIndexResponseCopyWith<UpdateIndexResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIndexResponseCopyWith<$Res> {
  factory $UpdateIndexResponseCopyWith(
    UpdateIndexResponse value,
    $Res Function(UpdateIndexResponse) then,
  ) = _$UpdateIndexResponseCopyWithImpl<$Res, UpdateIndexResponse>;
  @useResult
  $Res call({
    bool success,
    String? message,
    @JsonKey(name: 'task_id') String taskId,
    @JsonKey(name: 'status_url') String? statusUrl,
  });
}

/// @nodoc
class _$UpdateIndexResponseCopyWithImpl<$Res, $Val extends UpdateIndexResponse>
    implements $UpdateIndexResponseCopyWith<$Res> {
  _$UpdateIndexResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? taskId = null,
    Object? statusUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            statusUrl: freezed == statusUrl
                ? _value.statusUrl
                : statusUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateIndexResponseImplCopyWith<$Res>
    implements $UpdateIndexResponseCopyWith<$Res> {
  factory _$$UpdateIndexResponseImplCopyWith(
    _$UpdateIndexResponseImpl value,
    $Res Function(_$UpdateIndexResponseImpl) then,
  ) = __$$UpdateIndexResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String? message,
    @JsonKey(name: 'task_id') String taskId,
    @JsonKey(name: 'status_url') String? statusUrl,
  });
}

/// @nodoc
class __$$UpdateIndexResponseImplCopyWithImpl<$Res>
    extends _$UpdateIndexResponseCopyWithImpl<$Res, _$UpdateIndexResponseImpl>
    implements _$$UpdateIndexResponseImplCopyWith<$Res> {
  __$$UpdateIndexResponseImplCopyWithImpl(
    _$UpdateIndexResponseImpl _value,
    $Res Function(_$UpdateIndexResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? taskId = null,
    Object? statusUrl = freezed,
  }) {
    return _then(
      _$UpdateIndexResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        statusUrl: freezed == statusUrl
            ? _value.statusUrl
            : statusUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateIndexResponseImpl implements _UpdateIndexResponse {
  const _$UpdateIndexResponseImpl({
    required this.success,
    this.message,
    @JsonKey(name: 'task_id') required this.taskId,
    @JsonKey(name: 'status_url') this.statusUrl,
  });

  factory _$UpdateIndexResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateIndexResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'status_url')
  final String? statusUrl;

  @override
  String toString() {
    return 'UpdateIndexResponse(success: $success, message: $message, taskId: $taskId, statusUrl: $statusUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIndexResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.statusUrl, statusUrl) ||
                other.statusUrl == statusUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, taskId, statusUrl);

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIndexResponseImplCopyWith<_$UpdateIndexResponseImpl> get copyWith =>
      __$$UpdateIndexResponseImplCopyWithImpl<_$UpdateIndexResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateIndexResponseImplToJson(this);
  }
}

abstract class _UpdateIndexResponse implements UpdateIndexResponse {
  const factory _UpdateIndexResponse({
    required final bool success,
    final String? message,
    @JsonKey(name: 'task_id') required final String taskId,
    @JsonKey(name: 'status_url') final String? statusUrl,
  }) = _$UpdateIndexResponseImpl;

  factory _UpdateIndexResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateIndexResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'status_url')
  String? get statusUrl;

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateIndexResponseImplCopyWith<_$UpdateIndexResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskProgress _$UpdateTaskProgressFromJson(Map<String, dynamic> json) {
  return _UpdateTaskProgress.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskProgress {
  String? get indexing => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskProgressCopyWith<UpdateTaskProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskProgressCopyWith<$Res> {
  factory $UpdateTaskProgressCopyWith(
    UpdateTaskProgress value,
    $Res Function(UpdateTaskProgress) then,
  ) = _$UpdateTaskProgressCopyWithImpl<$Res, UpdateTaskProgress>;
  @useResult
  $Res call({String? indexing});
}

/// @nodoc
class _$UpdateTaskProgressCopyWithImpl<$Res, $Val extends UpdateTaskProgress>
    implements $UpdateTaskProgressCopyWith<$Res> {
  _$UpdateTaskProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? indexing = freezed}) {
    return _then(
      _value.copyWith(
            indexing: freezed == indexing
                ? _value.indexing
                : indexing // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTaskProgressImplCopyWith<$Res>
    implements $UpdateTaskProgressCopyWith<$Res> {
  factory _$$UpdateTaskProgressImplCopyWith(
    _$UpdateTaskProgressImpl value,
    $Res Function(_$UpdateTaskProgressImpl) then,
  ) = __$$UpdateTaskProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? indexing});
}

/// @nodoc
class __$$UpdateTaskProgressImplCopyWithImpl<$Res>
    extends _$UpdateTaskProgressCopyWithImpl<$Res, _$UpdateTaskProgressImpl>
    implements _$$UpdateTaskProgressImplCopyWith<$Res> {
  __$$UpdateTaskProgressImplCopyWithImpl(
    _$UpdateTaskProgressImpl _value,
    $Res Function(_$UpdateTaskProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? indexing = freezed}) {
    return _then(
      _$UpdateTaskProgressImpl(
        indexing: freezed == indexing
            ? _value.indexing
            : indexing // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskProgressImpl implements _UpdateTaskProgress {
  const _$UpdateTaskProgressImpl({this.indexing});

  factory _$UpdateTaskProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskProgressImplFromJson(json);

  @override
  final String? indexing;

  @override
  String toString() {
    return 'UpdateTaskProgress(indexing: $indexing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskProgressImpl &&
            (identical(other.indexing, indexing) ||
                other.indexing == indexing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, indexing);

  /// Create a copy of UpdateTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskProgressImplCopyWith<_$UpdateTaskProgressImpl> get copyWith =>
      __$$UpdateTaskProgressImplCopyWithImpl<_$UpdateTaskProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskProgressImplToJson(this);
  }
}

abstract class _UpdateTaskProgress implements UpdateTaskProgress {
  const factory _UpdateTaskProgress({final String? indexing}) =
      _$UpdateTaskProgressImpl;

  factory _UpdateTaskProgress.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskProgressImpl.fromJson;

  @override
  String? get indexing;

  /// Create a copy of UpdateTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskProgressImplCopyWith<_$UpdateTaskProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskError _$UpdateTaskErrorFromJson(Map<String, dynamic> json) {
  return _UpdateTaskError.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskError {
  String get stage => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskErrorCopyWith<UpdateTaskError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskErrorCopyWith<$Res> {
  factory $UpdateTaskErrorCopyWith(
    UpdateTaskError value,
    $Res Function(UpdateTaskError) then,
  ) = _$UpdateTaskErrorCopyWithImpl<$Res, UpdateTaskError>;
  @useResult
  $Res call({String stage, String message, String? timestamp});
}

/// @nodoc
class _$UpdateTaskErrorCopyWithImpl<$Res, $Val extends UpdateTaskError>
    implements $UpdateTaskErrorCopyWith<$Res> {
  _$UpdateTaskErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? message = null,
    Object? timestamp = freezed,
  }) {
    return _then(
      _value.copyWith(
            stage: null == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTaskErrorImplCopyWith<$Res>
    implements $UpdateTaskErrorCopyWith<$Res> {
  factory _$$UpdateTaskErrorImplCopyWith(
    _$UpdateTaskErrorImpl value,
    $Res Function(_$UpdateTaskErrorImpl) then,
  ) = __$$UpdateTaskErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stage, String message, String? timestamp});
}

/// @nodoc
class __$$UpdateTaskErrorImplCopyWithImpl<$Res>
    extends _$UpdateTaskErrorCopyWithImpl<$Res, _$UpdateTaskErrorImpl>
    implements _$$UpdateTaskErrorImplCopyWith<$Res> {
  __$$UpdateTaskErrorImplCopyWithImpl(
    _$UpdateTaskErrorImpl _value,
    $Res Function(_$UpdateTaskErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTaskError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? message = null,
    Object? timestamp = freezed,
  }) {
    return _then(
      _$UpdateTaskErrorImpl(
        stage: null == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: freezed == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskErrorImpl implements _UpdateTaskError {
  const _$UpdateTaskErrorImpl({
    required this.stage,
    required this.message,
    this.timestamp,
  });

  factory _$UpdateTaskErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskErrorImplFromJson(json);

  @override
  final String stage;
  @override
  final String message;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'UpdateTaskError(stage: $stage, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskErrorImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stage, message, timestamp);

  /// Create a copy of UpdateTaskError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskErrorImplCopyWith<_$UpdateTaskErrorImpl> get copyWith =>
      __$$UpdateTaskErrorImplCopyWithImpl<_$UpdateTaskErrorImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskErrorImplToJson(this);
  }
}

abstract class _UpdateTaskError implements UpdateTaskError {
  const factory _UpdateTaskError({
    required final String stage,
    required final String message,
    final String? timestamp,
  }) = _$UpdateTaskErrorImpl;

  factory _UpdateTaskError.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskErrorImpl.fromJson;

  @override
  String get stage;
  @override
  String get message;
  @override
  String? get timestamp;

  /// Create a copy of UpdateTaskError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskErrorImplCopyWith<_$UpdateTaskErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskStatus _$UpdateTaskStatusFromJson(Map<String, dynamic> json) {
  return _UpdateTaskStatus.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskStatus {
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  UpdateTaskProgress get progress => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  List<UpdateTaskError> get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  String? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskStatusCopyWith<UpdateTaskStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskStatusCopyWith<$Res> {
  factory $UpdateTaskStatusCopyWith(
    UpdateTaskStatus value,
    $Res Function(UpdateTaskStatus) then,
  ) = _$UpdateTaskStatusCopyWithImpl<$Res, UpdateTaskStatus>;
  @useResult
  $Res call({
    bool success,
    @JsonKey(name: 'task_id') String taskId,
    String status,
    String? stage,
    UpdateTaskProgress progress,
    Map<String, dynamic>? result,
    List<UpdateTaskError> errors,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'completed_at') String? completedAt,
  });

  $UpdateTaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$UpdateTaskStatusCopyWithImpl<$Res, $Val extends UpdateTaskStatus>
    implements $UpdateTaskStatusCopyWith<$Res> {
  _$UpdateTaskStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = null,
    Object? result = freezed,
    Object? errors = null,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            stage: freezed == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as String?,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as UpdateTaskProgress,
            result: freezed == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            errors: null == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<UpdateTaskError>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateTaskProgressCopyWith<$Res> get progress {
    return $UpdateTaskProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateTaskStatusImplCopyWith<$Res>
    implements $UpdateTaskStatusCopyWith<$Res> {
  factory _$$UpdateTaskStatusImplCopyWith(
    _$UpdateTaskStatusImpl value,
    $Res Function(_$UpdateTaskStatusImpl) then,
  ) = __$$UpdateTaskStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    @JsonKey(name: 'task_id') String taskId,
    String status,
    String? stage,
    UpdateTaskProgress progress,
    Map<String, dynamic>? result,
    List<UpdateTaskError> errors,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'completed_at') String? completedAt,
  });

  @override
  $UpdateTaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$UpdateTaskStatusImplCopyWithImpl<$Res>
    extends _$UpdateTaskStatusCopyWithImpl<$Res, _$UpdateTaskStatusImpl>
    implements _$$UpdateTaskStatusImplCopyWith<$Res> {
  __$$UpdateTaskStatusImplCopyWithImpl(
    _$UpdateTaskStatusImpl _value,
    $Res Function(_$UpdateTaskStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = null,
    Object? result = freezed,
    Object? errors = null,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$UpdateTaskStatusImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        stage: freezed == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as String?,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as UpdateTaskProgress,
        result: freezed == result
            ? _value._result
            : result // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        errors: null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<UpdateTaskError>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskStatusImpl implements _UpdateTaskStatus {
  const _$UpdateTaskStatusImpl({
    required this.success,
    @JsonKey(name: 'task_id') required this.taskId,
    required this.status,
    this.stage,
    this.progress = const UpdateTaskProgress(),
    final Map<String, dynamic>? result,
    final List<UpdateTaskError> errors = const [],
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'completed_at') this.completedAt,
  }) : _result = result,
       _errors = errors;

  factory _$UpdateTaskStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskStatusImplFromJson(json);

  @override
  final bool success;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  final String status;
  @override
  final String? stage;
  @override
  @JsonKey()
  final UpdateTaskProgress progress;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<UpdateTaskError> _errors;
  @override
  @JsonKey()
  List<UpdateTaskError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'completed_at')
  final String? completedAt;

  @override
  String toString() {
    return 'UpdateTaskStatus(success: $success, taskId: $taskId, status: $status, stage: $stage, progress: $progress, result: $result, errors: $errors, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskStatusImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    taskId,
    status,
    stage,
    progress,
    const DeepCollectionEquality().hash(_result),
    const DeepCollectionEquality().hash(_errors),
    createdAt,
    completedAt,
  );

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskStatusImplCopyWith<_$UpdateTaskStatusImpl> get copyWith =>
      __$$UpdateTaskStatusImplCopyWithImpl<_$UpdateTaskStatusImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskStatusImplToJson(this);
  }
}

abstract class _UpdateTaskStatus implements UpdateTaskStatus {
  const factory _UpdateTaskStatus({
    required final bool success,
    @JsonKey(name: 'task_id') required final String taskId,
    required final String status,
    final String? stage,
    final UpdateTaskProgress progress,
    final Map<String, dynamic>? result,
    final List<UpdateTaskError> errors,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'completed_at') final String? completedAt,
  }) = _$UpdateTaskStatusImpl;

  factory _UpdateTaskStatus.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskStatusImpl.fromJson;

  @override
  bool get success;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  String get status;
  @override
  String? get stage;
  @override
  UpdateTaskProgress get progress;
  @override
  Map<String, dynamic>? get result;
  @override
  List<UpdateTaskError> get errors;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'completed_at')
  String? get completedAt;

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskStatusImplCopyWith<_$UpdateTaskStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
