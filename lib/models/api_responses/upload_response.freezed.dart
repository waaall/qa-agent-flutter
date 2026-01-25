// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return _UploadResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadResponse {
  // 任务 ID
  String get taskId => throw _privateConstructorUsedError; // 文件名
  String get filename => throw _privateConstructorUsedError; // 消息
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UploadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadResponseCopyWith<UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
    UploadResponse value,
    $Res Function(UploadResponse) then,
  ) = _$UploadResponseCopyWithImpl<$Res, UploadResponse>;
  @useResult
  $Res call({String taskId, String filename, String? message});
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res, $Val extends UploadResponse>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? filename = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            filename: null == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadResponseImplCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$$UploadResponseImplCopyWith(
    _$UploadResponseImpl value,
    $Res Function(_$UploadResponseImpl) then,
  ) = __$$UploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId, String filename, String? message});
}

/// @nodoc
class __$$UploadResponseImplCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res, _$UploadResponseImpl>
    implements _$$UploadResponseImplCopyWith<$Res> {
  __$$UploadResponseImplCopyWithImpl(
    _$UploadResponseImpl _value,
    $Res Function(_$UploadResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? filename = null,
    Object? message = freezed,
  }) {
    return _then(
      _$UploadResponseImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        filename: null == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadResponseImpl implements _UploadResponse {
  const _$UploadResponseImpl({
    required this.taskId,
    required this.filename,
    this.message,
  });

  factory _$UploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseImplFromJson(json);

  // 任务 ID
  @override
  final String taskId;
  // 文件名
  @override
  final String filename;
  // 消息
  @override
  final String? message;

  @override
  String toString() {
    return 'UploadResponse(taskId: $taskId, filename: $filename, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, filename, message);

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      __$$UploadResponseImplCopyWithImpl<_$UploadResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResponseImplToJson(this);
  }
}

abstract class _UploadResponse implements UploadResponse {
  const factory _UploadResponse({
    required final String taskId,
    required final String filename,
    final String? message,
  }) = _$UploadResponseImpl;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$UploadResponseImpl.fromJson;

  // 任务 ID
  @override
  String get taskId; // 文件名
  @override
  String get filename; // 消息
  @override
  String? get message;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadTaskStatus _$UploadTaskStatusFromJson(Map<String, dynamic> json) {
  return _UploadTaskStatus.fromJson(json);
}

/// @nodoc
mixin _$UploadTaskStatus {
  // 任务 ID
  String get taskId =>
      throw _privateConstructorUsedError; // 状态: pending | processing | completed | failed
  String get status => throw _privateConstructorUsedError; // 阶段描述
  String? get stage => throw _privateConstructorUsedError; // 进度（0-100）
  int? get progress => throw _privateConstructorUsedError; // 错误信息
  List<String>? get errors => throw _privateConstructorUsedError; // 完成时间
  String? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this UploadTaskStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadTaskStatusCopyWith<UploadTaskStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadTaskStatusCopyWith<$Res> {
  factory $UploadTaskStatusCopyWith(
    UploadTaskStatus value,
    $Res Function(UploadTaskStatus) then,
  ) = _$UploadTaskStatusCopyWithImpl<$Res, UploadTaskStatus>;
  @useResult
  $Res call({
    String taskId,
    String status,
    String? stage,
    int? progress,
    List<String>? errors,
    String? completedAt,
  });
}

/// @nodoc
class _$UploadTaskStatusCopyWithImpl<$Res, $Val extends UploadTaskStatus>
    implements $UploadTaskStatusCopyWith<$Res> {
  _$UploadTaskStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = freezed,
    Object? errors = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            progress: freezed == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as int?,
            errors: freezed == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadTaskStatusImplCopyWith<$Res>
    implements $UploadTaskStatusCopyWith<$Res> {
  factory _$$UploadTaskStatusImplCopyWith(
    _$UploadTaskStatusImpl value,
    $Res Function(_$UploadTaskStatusImpl) then,
  ) = __$$UploadTaskStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String taskId,
    String status,
    String? stage,
    int? progress,
    List<String>? errors,
    String? completedAt,
  });
}

/// @nodoc
class __$$UploadTaskStatusImplCopyWithImpl<$Res>
    extends _$UploadTaskStatusCopyWithImpl<$Res, _$UploadTaskStatusImpl>
    implements _$$UploadTaskStatusImplCopyWith<$Res> {
  __$$UploadTaskStatusImplCopyWithImpl(
    _$UploadTaskStatusImpl _value,
    $Res Function(_$UploadTaskStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = freezed,
    Object? errors = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$UploadTaskStatusImpl(
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
        progress: freezed == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as int?,
        errors: freezed == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
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
class _$UploadTaskStatusImpl implements _UploadTaskStatus {
  const _$UploadTaskStatusImpl({
    required this.taskId,
    required this.status,
    this.stage,
    this.progress,
    final List<String>? errors,
    this.completedAt,
  }) : _errors = errors;

  factory _$UploadTaskStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadTaskStatusImplFromJson(json);

  // 任务 ID
  @override
  final String taskId;
  // 状态: pending | processing | completed | failed
  @override
  final String status;
  // 阶段描述
  @override
  final String? stage;
  // 进度（0-100）
  @override
  final int? progress;
  // 错误信息
  final List<String>? _errors;
  // 错误信息
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // 完成时间
  @override
  final String? completedAt;

  @override
  String toString() {
    return 'UploadTaskStatus(taskId: $taskId, status: $status, stage: $stage, progress: $progress, errors: $errors, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadTaskStatusImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    taskId,
    status,
    stage,
    progress,
    const DeepCollectionEquality().hash(_errors),
    completedAt,
  );

  /// Create a copy of UploadTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadTaskStatusImplCopyWith<_$UploadTaskStatusImpl> get copyWith =>
      __$$UploadTaskStatusImplCopyWithImpl<_$UploadTaskStatusImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadTaskStatusImplToJson(this);
  }
}

abstract class _UploadTaskStatus implements UploadTaskStatus {
  const factory _UploadTaskStatus({
    required final String taskId,
    required final String status,
    final String? stage,
    final int? progress,
    final List<String>? errors,
    final String? completedAt,
  }) = _$UploadTaskStatusImpl;

  factory _UploadTaskStatus.fromJson(Map<String, dynamic> json) =
      _$UploadTaskStatusImpl.fromJson;

  // 任务 ID
  @override
  String get taskId; // 状态: pending | processing | completed | failed
  @override
  String get status; // 阶段描述
  @override
  String? get stage; // 进度（0-100）
  @override
  int? get progress; // 错误信息
  @override
  List<String>? get errors; // 完成时间
  @override
  String? get completedAt;

  /// Create a copy of UploadTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadTaskStatusImplCopyWith<_$UploadTaskStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateIndexResponse _$UpdateIndexResponseFromJson(Map<String, dynamic> json) {
  return _UpdateIndexResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateIndexResponse {
  // 任务 ID
  String get taskId => throw _privateConstructorUsedError; // 消息
  String? get message => throw _privateConstructorUsedError;

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
  $Res call({String taskId, String? message});
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
  $Res call({Object? taskId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
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
  $Res call({String taskId, String? message});
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
  $Res call({Object? taskId = null, Object? message = freezed}) {
    return _then(
      _$UpdateIndexResponseImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateIndexResponseImpl implements _UpdateIndexResponse {
  const _$UpdateIndexResponseImpl({required this.taskId, this.message});

  factory _$UpdateIndexResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateIndexResponseImplFromJson(json);

  // 任务 ID
  @override
  final String taskId;
  // 消息
  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateIndexResponse(taskId: $taskId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIndexResponseImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, message);

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
    required final String taskId,
    final String? message,
  }) = _$UpdateIndexResponseImpl;

  factory _UpdateIndexResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateIndexResponseImpl.fromJson;

  // 任务 ID
  @override
  String get taskId; // 消息
  @override
  String? get message;

  /// Create a copy of UpdateIndexResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateIndexResponseImplCopyWith<_$UpdateIndexResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskStatus _$UpdateTaskStatusFromJson(Map<String, dynamic> json) {
  return _UpdateTaskStatus.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskStatus {
  // 任务 ID
  String get taskId => throw _privateConstructorUsedError; // 状态
  String get status => throw _privateConstructorUsedError; // 阶段描述
  String? get stage => throw _privateConstructorUsedError; // 进度
  int? get progress => throw _privateConstructorUsedError; // 统计信息
  UpdateStats? get stats => throw _privateConstructorUsedError; // 错误
  List<String>? get errors => throw _privateConstructorUsedError;

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
    String taskId,
    String status,
    String? stage,
    int? progress,
    UpdateStats? stats,
    List<String>? errors,
  });

  $UpdateStatsCopyWith<$Res>? get stats;
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
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = freezed,
    Object? stats = freezed,
    Object? errors = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            progress: freezed == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as int?,
            stats: freezed == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as UpdateStats?,
            errors: freezed == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $UpdateStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
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
    String taskId,
    String status,
    String? stage,
    int? progress,
    UpdateStats? stats,
    List<String>? errors,
  });

  @override
  $UpdateStatsCopyWith<$Res>? get stats;
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
    Object? taskId = null,
    Object? status = null,
    Object? stage = freezed,
    Object? progress = freezed,
    Object? stats = freezed,
    Object? errors = freezed,
  }) {
    return _then(
      _$UpdateTaskStatusImpl(
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
        progress: freezed == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as int?,
        stats: freezed == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as UpdateStats?,
        errors: freezed == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskStatusImpl implements _UpdateTaskStatus {
  const _$UpdateTaskStatusImpl({
    required this.taskId,
    required this.status,
    this.stage,
    this.progress,
    this.stats,
    final List<String>? errors,
  }) : _errors = errors;

  factory _$UpdateTaskStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskStatusImplFromJson(json);

  // 任务 ID
  @override
  final String taskId;
  // 状态
  @override
  final String status;
  // 阶段描述
  @override
  final String? stage;
  // 进度
  @override
  final int? progress;
  // 统计信息
  @override
  final UpdateStats? stats;
  // 错误
  final List<String>? _errors;
  // 错误
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateTaskStatus(taskId: $taskId, status: $status, stage: $stage, progress: $progress, stats: $stats, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskStatusImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    taskId,
    status,
    stage,
    progress,
    stats,
    const DeepCollectionEquality().hash(_errors),
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
    required final String taskId,
    required final String status,
    final String? stage,
    final int? progress,
    final UpdateStats? stats,
    final List<String>? errors,
  }) = _$UpdateTaskStatusImpl;

  factory _UpdateTaskStatus.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskStatusImpl.fromJson;

  // 任务 ID
  @override
  String get taskId; // 状态
  @override
  String get status; // 阶段描述
  @override
  String? get stage; // 进度
  @override
  int? get progress; // 统计信息
  @override
  UpdateStats? get stats; // 错误
  @override
  List<String>? get errors;

  /// Create a copy of UpdateTaskStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskStatusImplCopyWith<_$UpdateTaskStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateStats _$UpdateStatsFromJson(Map<String, dynamic> json) {
  return _UpdateStats.fromJson(json);
}

/// @nodoc
mixin _$UpdateStats {
  int? get documentsProcessed => throw _privateConstructorUsedError;
  int? get chunksCreated => throw _privateConstructorUsedError;
  int? get vectorsIndexed => throw _privateConstructorUsedError;

  /// Serializes this UpdateStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStatsCopyWith<UpdateStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatsCopyWith<$Res> {
  factory $UpdateStatsCopyWith(
    UpdateStats value,
    $Res Function(UpdateStats) then,
  ) = _$UpdateStatsCopyWithImpl<$Res, UpdateStats>;
  @useResult
  $Res call({int? documentsProcessed, int? chunksCreated, int? vectorsIndexed});
}

/// @nodoc
class _$UpdateStatsCopyWithImpl<$Res, $Val extends UpdateStats>
    implements $UpdateStatsCopyWith<$Res> {
  _$UpdateStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentsProcessed = freezed,
    Object? chunksCreated = freezed,
    Object? vectorsIndexed = freezed,
  }) {
    return _then(
      _value.copyWith(
            documentsProcessed: freezed == documentsProcessed
                ? _value.documentsProcessed
                : documentsProcessed // ignore: cast_nullable_to_non_nullable
                      as int?,
            chunksCreated: freezed == chunksCreated
                ? _value.chunksCreated
                : chunksCreated // ignore: cast_nullable_to_non_nullable
                      as int?,
            vectorsIndexed: freezed == vectorsIndexed
                ? _value.vectorsIndexed
                : vectorsIndexed // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateStatsImplCopyWith<$Res>
    implements $UpdateStatsCopyWith<$Res> {
  factory _$$UpdateStatsImplCopyWith(
    _$UpdateStatsImpl value,
    $Res Function(_$UpdateStatsImpl) then,
  ) = __$$UpdateStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? documentsProcessed, int? chunksCreated, int? vectorsIndexed});
}

/// @nodoc
class __$$UpdateStatsImplCopyWithImpl<$Res>
    extends _$UpdateStatsCopyWithImpl<$Res, _$UpdateStatsImpl>
    implements _$$UpdateStatsImplCopyWith<$Res> {
  __$$UpdateStatsImplCopyWithImpl(
    _$UpdateStatsImpl _value,
    $Res Function(_$UpdateStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentsProcessed = freezed,
    Object? chunksCreated = freezed,
    Object? vectorsIndexed = freezed,
  }) {
    return _then(
      _$UpdateStatsImpl(
        documentsProcessed: freezed == documentsProcessed
            ? _value.documentsProcessed
            : documentsProcessed // ignore: cast_nullable_to_non_nullable
                  as int?,
        chunksCreated: freezed == chunksCreated
            ? _value.chunksCreated
            : chunksCreated // ignore: cast_nullable_to_non_nullable
                  as int?,
        vectorsIndexed: freezed == vectorsIndexed
            ? _value.vectorsIndexed
            : vectorsIndexed // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStatsImpl implements _UpdateStats {
  const _$UpdateStatsImpl({
    this.documentsProcessed,
    this.chunksCreated,
    this.vectorsIndexed,
  });

  factory _$UpdateStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStatsImplFromJson(json);

  @override
  final int? documentsProcessed;
  @override
  final int? chunksCreated;
  @override
  final int? vectorsIndexed;

  @override
  String toString() {
    return 'UpdateStats(documentsProcessed: $documentsProcessed, chunksCreated: $chunksCreated, vectorsIndexed: $vectorsIndexed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatsImpl &&
            (identical(other.documentsProcessed, documentsProcessed) ||
                other.documentsProcessed == documentsProcessed) &&
            (identical(other.chunksCreated, chunksCreated) ||
                other.chunksCreated == chunksCreated) &&
            (identical(other.vectorsIndexed, vectorsIndexed) ||
                other.vectorsIndexed == vectorsIndexed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    documentsProcessed,
    chunksCreated,
    vectorsIndexed,
  );

  /// Create a copy of UpdateStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatsImplCopyWith<_$UpdateStatsImpl> get copyWith =>
      __$$UpdateStatsImplCopyWithImpl<_$UpdateStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStatsImplToJson(this);
  }
}

abstract class _UpdateStats implements UpdateStats {
  const factory _UpdateStats({
    final int? documentsProcessed,
    final int? chunksCreated,
    final int? vectorsIndexed,
  }) = _$UpdateStatsImpl;

  factory _UpdateStats.fromJson(Map<String, dynamic> json) =
      _$UpdateStatsImpl.fromJson;

  @override
  int? get documentsProcessed;
  @override
  int? get chunksCreated;
  @override
  int? get vectorsIndexed;

  /// Create a copy of UpdateStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatsImplCopyWith<_$UpdateStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
