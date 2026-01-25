// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessageMetadata _$MessageMetadataFromJson(Map<String, dynamic> json) {
  return _MessageMetadata.fromJson(json);
}

/// @nodoc
mixin _$MessageMetadata {
  // 查询类型: knowledge | sql | api | general
  String? get queryType => throw _privateConstructorUsedError; // 使用的引擎列表
  List<String>? get enginesUsed => throw _privateConstructorUsedError; // 置信度
  double? get confidence => throw _privateConstructorUsedError;

  /// Serializes this MessageMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageMetadataCopyWith<MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetadataCopyWith<$Res> {
  factory $MessageMetadataCopyWith(
    MessageMetadata value,
    $Res Function(MessageMetadata) then,
  ) = _$MessageMetadataCopyWithImpl<$Res, MessageMetadata>;
  @useResult
  $Res call({String? queryType, List<String>? enginesUsed, double? confidence});
}

/// @nodoc
class _$MessageMetadataCopyWithImpl<$Res, $Val extends MessageMetadata>
    implements $MessageMetadataCopyWith<$Res> {
  _$MessageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryType = freezed,
    Object? enginesUsed = freezed,
    Object? confidence = freezed,
  }) {
    return _then(
      _value.copyWith(
            queryType: freezed == queryType
                ? _value.queryType
                : queryType // ignore: cast_nullable_to_non_nullable
                      as String?,
            enginesUsed: freezed == enginesUsed
                ? _value.enginesUsed
                : enginesUsed // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            confidence: freezed == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageMetadataImplCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$MessageMetadataImplCopyWith(
    _$MessageMetadataImpl value,
    $Res Function(_$MessageMetadataImpl) then,
  ) = __$$MessageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? queryType, List<String>? enginesUsed, double? confidence});
}

/// @nodoc
class __$$MessageMetadataImplCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res, _$MessageMetadataImpl>
    implements _$$MessageMetadataImplCopyWith<$Res> {
  __$$MessageMetadataImplCopyWithImpl(
    _$MessageMetadataImpl _value,
    $Res Function(_$MessageMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryType = freezed,
    Object? enginesUsed = freezed,
    Object? confidence = freezed,
  }) {
    return _then(
      _$MessageMetadataImpl(
        queryType: freezed == queryType
            ? _value.queryType
            : queryType // ignore: cast_nullable_to_non_nullable
                  as String?,
        enginesUsed: freezed == enginesUsed
            ? _value._enginesUsed
            : enginesUsed // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        confidence: freezed == confidence
            ? _value.confidence
            : confidence // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageMetadataImpl implements _MessageMetadata {
  const _$MessageMetadataImpl({
    this.queryType,
    final List<String>? enginesUsed,
    this.confidence,
  }) : _enginesUsed = enginesUsed;

  factory _$MessageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageMetadataImplFromJson(json);

  // 查询类型: knowledge | sql | api | general
  @override
  final String? queryType;
  // 使用的引擎列表
  final List<String>? _enginesUsed;
  // 使用的引擎列表
  @override
  List<String>? get enginesUsed {
    final value = _enginesUsed;
    if (value == null) return null;
    if (_enginesUsed is EqualUnmodifiableListView) return _enginesUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // 置信度
  @override
  final double? confidence;

  @override
  String toString() {
    return 'MessageMetadata(queryType: $queryType, enginesUsed: $enginesUsed, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageMetadataImpl &&
            (identical(other.queryType, queryType) ||
                other.queryType == queryType) &&
            const DeepCollectionEquality().equals(
              other._enginesUsed,
              _enginesUsed,
            ) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    queryType,
    const DeepCollectionEquality().hash(_enginesUsed),
    confidence,
  );

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageMetadataImplCopyWith<_$MessageMetadataImpl> get copyWith =>
      __$$MessageMetadataImplCopyWithImpl<_$MessageMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageMetadataImplToJson(this);
  }
}

abstract class _MessageMetadata implements MessageMetadata {
  const factory _MessageMetadata({
    final String? queryType,
    final List<String>? enginesUsed,
    final double? confidence,
  }) = _$MessageMetadataImpl;

  factory _MessageMetadata.fromJson(Map<String, dynamic> json) =
      _$MessageMetadataImpl.fromJson;

  // 查询类型: knowledge | sql | api | general
  @override
  String? get queryType; // 使用的引擎列表
  @override
  List<String>? get enginesUsed; // 置信度
  @override
  double? get confidence;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageMetadataImplCopyWith<_$MessageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  // 消息唯一 ID
  String get id => throw _privateConstructorUsedError; // 角色: user | assistant
  String get role => throw _privateConstructorUsedError; // 消息内容
  String get content => throw _privateConstructorUsedError; // 时间戳（毫秒）
  int get timestamp => throw _privateConstructorUsedError; // 消息元数据
  MessageMetadata? get metadata => throw _privateConstructorUsedError; // 是否加载中
  bool get isLoading => throw _privateConstructorUsedError; // 错误信息
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({
    String id,
    String role,
    String content,
    int timestamp,
    MessageMetadata? metadata,
    bool isLoading,
    String? error,
  });

  $MessageMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? metadata = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as int,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as MessageMetadata?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MessageMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
    _$MessageImpl value,
    $Res Function(_$MessageImpl) then,
  ) = __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String role,
    String content,
    int timestamp,
    MessageMetadata? metadata,
    bool isLoading,
    String? error,
  });

  @override
  $MessageMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
    _$MessageImpl _value,
    $Res Function(_$MessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? metadata = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$MessageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as int,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as MessageMetadata?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$MessageImpl implements _Message {
  const _$MessageImpl({
    required this.id,
    required this.role,
    required this.content,
    required this.timestamp,
    this.metadata,
    this.isLoading = false,
    this.error,
  });

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  // 消息唯一 ID
  @override
  final String id;
  // 角色: user | assistant
  @override
  final String role;
  // 消息内容
  @override
  final String content;
  // 时间戳（毫秒）
  @override
  final int timestamp;
  // 消息元数据
  @override
  final MessageMetadata? metadata;
  // 是否加载中
  @override
  @JsonKey()
  final bool isLoading;
  // 错误信息
  @override
  final String? error;

  @override
  String toString() {
    return 'Message(id: $id, role: $role, content: $content, timestamp: $timestamp, metadata: $metadata, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    role,
    content,
    timestamp,
    metadata,
    isLoading,
    error,
  );

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message({
    required final String id,
    required final String role,
    required final String content,
    required final int timestamp,
    final MessageMetadata? metadata,
    final bool isLoading,
    final String? error,
  }) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  // 消息唯一 ID
  @override
  String get id; // 角色: user | assistant
  @override
  String get role; // 消息内容
  @override
  String get content; // 时间戳（毫秒）
  @override
  int get timestamp; // 消息元数据
  @override
  MessageMetadata? get metadata; // 是否加载中
  @override
  bool get isLoading; // 错误信息
  @override
  String? get error;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
