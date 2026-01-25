// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TaskError _$TaskErrorFromJson(Map<String, dynamic> json) {
  return _TaskError.fromJson(json);
}

/// @nodoc
mixin _$TaskError {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this TaskError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskErrorCopyWith<TaskError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskErrorCopyWith<$Res> {
  factory $TaskErrorCopyWith(TaskError value, $Res Function(TaskError) then) =
      _$TaskErrorCopyWithImpl<$Res, TaskError>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class _$TaskErrorCopyWithImpl<$Res, $Val extends TaskError>
    implements $TaskErrorCopyWith<$Res> {
  _$TaskErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskErrorImplCopyWith<$Res>
    implements $TaskErrorCopyWith<$Res> {
  factory _$$TaskErrorImplCopyWith(
    _$TaskErrorImpl value,
    $Res Function(_$TaskErrorImpl) then,
  ) = __$$TaskErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$TaskErrorImplCopyWithImpl<$Res>
    extends _$TaskErrorCopyWithImpl<$Res, _$TaskErrorImpl>
    implements _$$TaskErrorImplCopyWith<$Res> {
  __$$TaskErrorImplCopyWithImpl(
    _$TaskErrorImpl _value,
    $Res Function(_$TaskErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = freezed}) {
    return _then(
      _$TaskErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskErrorImpl implements _TaskError {
  const _$TaskErrorImpl({required this.message, this.code});

  factory _$TaskErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskErrorImplFromJson(json);

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'TaskError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of TaskError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      __$$TaskErrorImplCopyWithImpl<_$TaskErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskErrorImplToJson(this);
  }
}

abstract class _TaskError implements TaskError {
  const factory _TaskError({
    required final String message,
    final String? code,
  }) = _$TaskErrorImpl;

  factory _TaskError.fromJson(Map<String, dynamic> json) =
      _$TaskErrorImpl.fromJson;

  @override
  String get message;
  @override
  String? get code;

  /// Create a copy of TaskError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnifiedTaskInfo _$UnifiedTaskInfoFromJson(Map<String, dynamic> json) {
  return _UnifiedTaskInfo.fromJson(json);
}

/// @nodoc
mixin _$UnifiedTaskInfo {
  // 任务 ID
  String get taskId => throw _privateConstructorUsedError; // 任务类型
  TaskType get type => throw _privateConstructorUsedError; // 任务状态
  TaskStatus get status => throw _privateConstructorUsedError; // 进度（0-100）
  int get progress => throw _privateConstructorUsedError; // 阶段描述
  String get stage => throw _privateConstructorUsedError; // 创建时间（毫秒时间戳）
  int get createdAt => throw _privateConstructorUsedError; // 文件名（上传任务）
  String? get filename => throw _privateConstructorUsedError; // 错误列表
  List<TaskError>? get errors => throw _privateConstructorUsedError;

  /// Serializes this UnifiedTaskInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnifiedTaskInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnifiedTaskInfoCopyWith<UnifiedTaskInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnifiedTaskInfoCopyWith<$Res> {
  factory $UnifiedTaskInfoCopyWith(
    UnifiedTaskInfo value,
    $Res Function(UnifiedTaskInfo) then,
  ) = _$UnifiedTaskInfoCopyWithImpl<$Res, UnifiedTaskInfo>;
  @useResult
  $Res call({
    String taskId,
    TaskType type,
    TaskStatus status,
    int progress,
    String stage,
    int createdAt,
    String? filename,
    List<TaskError>? errors,
  });
}

/// @nodoc
class _$UnifiedTaskInfoCopyWithImpl<$Res, $Val extends UnifiedTaskInfo>
    implements $UnifiedTaskInfoCopyWith<$Res> {
  _$UnifiedTaskInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnifiedTaskInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
    Object? stage = null,
    Object? createdAt = null,
    Object? filename = freezed,
    Object? errors = freezed,
  }) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as TaskType,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TaskStatus,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as int,
            stage: null == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as int,
            filename: freezed == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String?,
            errors: freezed == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<TaskError>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnifiedTaskInfoImplCopyWith<$Res>
    implements $UnifiedTaskInfoCopyWith<$Res> {
  factory _$$UnifiedTaskInfoImplCopyWith(
    _$UnifiedTaskInfoImpl value,
    $Res Function(_$UnifiedTaskInfoImpl) then,
  ) = __$$UnifiedTaskInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String taskId,
    TaskType type,
    TaskStatus status,
    int progress,
    String stage,
    int createdAt,
    String? filename,
    List<TaskError>? errors,
  });
}

/// @nodoc
class __$$UnifiedTaskInfoImplCopyWithImpl<$Res>
    extends _$UnifiedTaskInfoCopyWithImpl<$Res, _$UnifiedTaskInfoImpl>
    implements _$$UnifiedTaskInfoImplCopyWith<$Res> {
  __$$UnifiedTaskInfoImplCopyWithImpl(
    _$UnifiedTaskInfoImpl _value,
    $Res Function(_$UnifiedTaskInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnifiedTaskInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
    Object? stage = null,
    Object? createdAt = null,
    Object? filename = freezed,
    Object? errors = freezed,
  }) {
    return _then(
      _$UnifiedTaskInfoImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as TaskType,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TaskStatus,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as int,
        stage: null == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as int,
        filename: freezed == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String?,
        errors: freezed == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<TaskError>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnifiedTaskInfoImpl implements _UnifiedTaskInfo {
  const _$UnifiedTaskInfoImpl({
    required this.taskId,
    required this.type,
    required this.status,
    required this.progress,
    required this.stage,
    required this.createdAt,
    this.filename,
    final List<TaskError>? errors,
  }) : _errors = errors;

  factory _$UnifiedTaskInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnifiedTaskInfoImplFromJson(json);

  // 任务 ID
  @override
  final String taskId;
  // 任务类型
  @override
  final TaskType type;
  // 任务状态
  @override
  final TaskStatus status;
  // 进度（0-100）
  @override
  final int progress;
  // 阶段描述
  @override
  final String stage;
  // 创建时间（毫秒时间戳）
  @override
  final int createdAt;
  // 文件名（上传任务）
  @override
  final String? filename;
  // 错误列表
  final List<TaskError>? _errors;
  // 错误列表
  @override
  List<TaskError>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UnifiedTaskInfo(taskId: $taskId, type: $type, status: $status, progress: $progress, stage: $stage, createdAt: $createdAt, filename: $filename, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnifiedTaskInfoImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    taskId,
    type,
    status,
    progress,
    stage,
    createdAt,
    filename,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of UnifiedTaskInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnifiedTaskInfoImplCopyWith<_$UnifiedTaskInfoImpl> get copyWith =>
      __$$UnifiedTaskInfoImplCopyWithImpl<_$UnifiedTaskInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UnifiedTaskInfoImplToJson(this);
  }
}

abstract class _UnifiedTaskInfo implements UnifiedTaskInfo {
  const factory _UnifiedTaskInfo({
    required final String taskId,
    required final TaskType type,
    required final TaskStatus status,
    required final int progress,
    required final String stage,
    required final int createdAt,
    final String? filename,
    final List<TaskError>? errors,
  }) = _$UnifiedTaskInfoImpl;

  factory _UnifiedTaskInfo.fromJson(Map<String, dynamic> json) =
      _$UnifiedTaskInfoImpl.fromJson;

  // 任务 ID
  @override
  String get taskId; // 任务类型
  @override
  TaskType get type; // 任务状态
  @override
  TaskStatus get status; // 进度（0-100）
  @override
  int get progress; // 阶段描述
  @override
  String get stage; // 创建时间（毫秒时间戳）
  @override
  int get createdAt; // 文件名（上传任务）
  @override
  String? get filename; // 错误列表
  @override
  List<TaskError>? get errors;

  /// Create a copy of UnifiedTaskInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnifiedTaskInfoImplCopyWith<_$UnifiedTaskInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskQueueState _$TaskQueueStateFromJson(Map<String, dynamic> json) {
  return _TaskQueueState.fromJson(json);
}

/// @nodoc
mixin _$TaskQueueState {
  List<UnifiedTaskInfo> get tasks => throw _privateConstructorUsedError;

  /// Serializes this TaskQueueState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskQueueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskQueueStateCopyWith<TaskQueueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskQueueStateCopyWith<$Res> {
  factory $TaskQueueStateCopyWith(
    TaskQueueState value,
    $Res Function(TaskQueueState) then,
  ) = _$TaskQueueStateCopyWithImpl<$Res, TaskQueueState>;
  @useResult
  $Res call({List<UnifiedTaskInfo> tasks});
}

/// @nodoc
class _$TaskQueueStateCopyWithImpl<$Res, $Val extends TaskQueueState>
    implements $TaskQueueStateCopyWith<$Res> {
  _$TaskQueueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskQueueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tasks = null}) {
    return _then(
      _value.copyWith(
            tasks: null == tasks
                ? _value.tasks
                : tasks // ignore: cast_nullable_to_non_nullable
                      as List<UnifiedTaskInfo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskQueueStateImplCopyWith<$Res>
    implements $TaskQueueStateCopyWith<$Res> {
  factory _$$TaskQueueStateImplCopyWith(
    _$TaskQueueStateImpl value,
    $Res Function(_$TaskQueueStateImpl) then,
  ) = __$$TaskQueueStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnifiedTaskInfo> tasks});
}

/// @nodoc
class __$$TaskQueueStateImplCopyWithImpl<$Res>
    extends _$TaskQueueStateCopyWithImpl<$Res, _$TaskQueueStateImpl>
    implements _$$TaskQueueStateImplCopyWith<$Res> {
  __$$TaskQueueStateImplCopyWithImpl(
    _$TaskQueueStateImpl _value,
    $Res Function(_$TaskQueueStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskQueueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tasks = null}) {
    return _then(
      _$TaskQueueStateImpl(
        tasks: null == tasks
            ? _value._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<UnifiedTaskInfo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskQueueStateImpl implements _TaskQueueState {
  const _$TaskQueueStateImpl({final List<UnifiedTaskInfo> tasks = const []})
    : _tasks = tasks;

  factory _$TaskQueueStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskQueueStateImplFromJson(json);

  final List<UnifiedTaskInfo> _tasks;
  @override
  @JsonKey()
  List<UnifiedTaskInfo> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskQueueState(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskQueueStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskQueueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskQueueStateImplCopyWith<_$TaskQueueStateImpl> get copyWith =>
      __$$TaskQueueStateImplCopyWithImpl<_$TaskQueueStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskQueueStateImplToJson(this);
  }
}

abstract class _TaskQueueState implements TaskQueueState {
  const factory _TaskQueueState({final List<UnifiedTaskInfo> tasks}) =
      _$TaskQueueStateImpl;

  factory _TaskQueueState.fromJson(Map<String, dynamic> json) =
      _$TaskQueueStateImpl.fromJson;

  @override
  List<UnifiedTaskInfo> get tasks;

  /// Create a copy of TaskQueueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskQueueStateImplCopyWith<_$TaskQueueStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
