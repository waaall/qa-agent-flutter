// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) {
  return _ChatRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatRequest {
  // 用户查询内容
  String get query => throw _privateConstructorUsedError; // 会话 ID
  String? get sessionId => throw _privateConstructorUsedError; // 是否重置会话
  bool get reset => throw _privateConstructorUsedError;

  /// Serializes this ChatRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRequestCopyWith<ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestCopyWith<$Res> {
  factory $ChatRequestCopyWith(
    ChatRequest value,
    $Res Function(ChatRequest) then,
  ) = _$ChatRequestCopyWithImpl<$Res, ChatRequest>;
  @useResult
  $Res call({String query, String? sessionId, bool reset});
}

/// @nodoc
class _$ChatRequestCopyWithImpl<$Res, $Val extends ChatRequest>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sessionId = freezed,
    Object? reset = null,
  }) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            reset: null == reset
                ? _value.reset
                : reset // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatRequestImplCopyWith<$Res>
    implements $ChatRequestCopyWith<$Res> {
  factory _$$ChatRequestImplCopyWith(
    _$ChatRequestImpl value,
    $Res Function(_$ChatRequestImpl) then,
  ) = __$$ChatRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, String? sessionId, bool reset});
}

/// @nodoc
class __$$ChatRequestImplCopyWithImpl<$Res>
    extends _$ChatRequestCopyWithImpl<$Res, _$ChatRequestImpl>
    implements _$$ChatRequestImplCopyWith<$Res> {
  __$$ChatRequestImplCopyWithImpl(
    _$ChatRequestImpl _value,
    $Res Function(_$ChatRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sessionId = freezed,
    Object? reset = null,
  }) {
    return _then(
      _$ChatRequestImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        reset: null == reset
            ? _value.reset
            : reset // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRequestImpl implements _ChatRequest {
  const _$ChatRequestImpl({
    required this.query,
    this.sessionId,
    this.reset = false,
  });

  factory _$ChatRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRequestImplFromJson(json);

  // 用户查询内容
  @override
  final String query;
  // 会话 ID
  @override
  final String? sessionId;
  // 是否重置会话
  @override
  @JsonKey()
  final bool reset;

  @override
  String toString() {
    return 'ChatRequest(query: $query, sessionId: $sessionId, reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query, sessionId, reset);

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      __$$ChatRequestImplCopyWithImpl<_$ChatRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRequestImplToJson(this);
  }
}

abstract class _ChatRequest implements ChatRequest {
  const factory _ChatRequest({
    required final String query,
    final String? sessionId,
    final bool reset,
  }) = _$ChatRequestImpl;

  factory _ChatRequest.fromJson(Map<String, dynamic> json) =
      _$ChatRequestImpl.fromJson;

  // 用户查询内容
  @override
  String get query; // 会话 ID
  @override
  String? get sessionId; // 是否重置会话
  @override
  bool get reset;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  // 回答内容
  String get answer => throw _privateConstructorUsedError; // 会话 ID
  String get sessionId => throw _privateConstructorUsedError; // 查询类型
  String? get queryType => throw _privateConstructorUsedError; // 使用的引擎
  List<String>? get enginesUsed => throw _privateConstructorUsedError; // 置信度
  double? get confidence => throw _privateConstructorUsedError; // 原始查询
  String? get query => throw _privateConstructorUsedError;

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
    ChatResponse value,
    $Res Function(ChatResponse) then,
  ) = _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call({
    String answer,
    String sessionId,
    String? queryType,
    List<String>? enginesUsed,
    double? confidence,
    String? query,
  });
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? sessionId = null,
    Object? queryType = freezed,
    Object? enginesUsed = freezed,
    Object? confidence = freezed,
    Object? query = freezed,
  }) {
    return _then(
      _value.copyWith(
            answer: null == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
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
            query: freezed == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
    _$ChatResponseImpl value,
    $Res Function(_$ChatResponseImpl) then,
  ) = __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String answer,
    String sessionId,
    String? queryType,
    List<String>? enginesUsed,
    double? confidence,
    String? query,
  });
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
    _$ChatResponseImpl _value,
    $Res Function(_$ChatResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? sessionId = null,
    Object? queryType = freezed,
    Object? enginesUsed = freezed,
    Object? confidence = freezed,
    Object? query = freezed,
  }) {
    return _then(
      _$ChatResponseImpl(
        answer: null == answer
            ? _value.answer
            : answer // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
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
        query: freezed == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl({
    required this.answer,
    required this.sessionId,
    this.queryType,
    final List<String>? enginesUsed,
    this.confidence,
    this.query,
  }) : _enginesUsed = enginesUsed;

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  // 回答内容
  @override
  final String answer;
  // 会话 ID
  @override
  final String sessionId;
  // 查询类型
  @override
  final String? queryType;
  // 使用的引擎
  final List<String>? _enginesUsed;
  // 使用的引擎
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
  // 原始查询
  @override
  final String? query;

  @override
  String toString() {
    return 'ChatResponse(answer: $answer, sessionId: $sessionId, queryType: $queryType, enginesUsed: $enginesUsed, confidence: $confidence, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.queryType, queryType) ||
                other.queryType == queryType) &&
            const DeepCollectionEquality().equals(
              other._enginesUsed,
              _enginesUsed,
            ) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    answer,
    sessionId,
    queryType,
    const DeepCollectionEquality().hash(_enginesUsed),
    confidence,
    query,
  );

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(this);
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse({
    required final String answer,
    required final String sessionId,
    final String? queryType,
    final List<String>? enginesUsed,
    final double? confidence,
    final String? query,
  }) = _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  // 回答内容
  @override
  String get answer; // 会话 ID
  @override
  String get sessionId; // 查询类型
  @override
  String? get queryType; // 使用的引擎
  @override
  List<String>? get enginesUsed; // 置信度
  @override
  double? get confidence; // 原始查询
  @override
  String? get query;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryMessage _$HistoryMessageFromJson(Map<String, dynamic> json) {
  return _HistoryMessage.fromJson(json);
}

/// @nodoc
mixin _$HistoryMessage {
  // 角色
  String get role => throw _privateConstructorUsedError; // 内容
  String get content => throw _privateConstructorUsedError; // 时间戳
  int get timestamp => throw _privateConstructorUsedError; // 额外信息
  Map<String, dynamic>? get additionalKwargs =>
      throw _privateConstructorUsedError;

  /// Serializes this HistoryMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryMessageCopyWith<HistoryMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryMessageCopyWith<$Res> {
  factory $HistoryMessageCopyWith(
    HistoryMessage value,
    $Res Function(HistoryMessage) then,
  ) = _$HistoryMessageCopyWithImpl<$Res, HistoryMessage>;
  @useResult
  $Res call({
    String role,
    String content,
    int timestamp,
    Map<String, dynamic>? additionalKwargs,
  });
}

/// @nodoc
class _$HistoryMessageCopyWithImpl<$Res, $Val extends HistoryMessage>
    implements $HistoryMessageCopyWith<$Res> {
  _$HistoryMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? additionalKwargs = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            additionalKwargs: freezed == additionalKwargs
                ? _value.additionalKwargs
                : additionalKwargs // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HistoryMessageImplCopyWith<$Res>
    implements $HistoryMessageCopyWith<$Res> {
  factory _$$HistoryMessageImplCopyWith(
    _$HistoryMessageImpl value,
    $Res Function(_$HistoryMessageImpl) then,
  ) = __$$HistoryMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String role,
    String content,
    int timestamp,
    Map<String, dynamic>? additionalKwargs,
  });
}

/// @nodoc
class __$$HistoryMessageImplCopyWithImpl<$Res>
    extends _$HistoryMessageCopyWithImpl<$Res, _$HistoryMessageImpl>
    implements _$$HistoryMessageImplCopyWith<$Res> {
  __$$HistoryMessageImplCopyWithImpl(
    _$HistoryMessageImpl _value,
    $Res Function(_$HistoryMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? additionalKwargs = freezed,
  }) {
    return _then(
      _$HistoryMessageImpl(
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
        additionalKwargs: freezed == additionalKwargs
            ? _value._additionalKwargs
            : additionalKwargs // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryMessageImpl implements _HistoryMessage {
  const _$HistoryMessageImpl({
    required this.role,
    required this.content,
    required this.timestamp,
    final Map<String, dynamic>? additionalKwargs,
  }) : _additionalKwargs = additionalKwargs;

  factory _$HistoryMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryMessageImplFromJson(json);

  // 角色
  @override
  final String role;
  // 内容
  @override
  final String content;
  // 时间戳
  @override
  final int timestamp;
  // 额外信息
  final Map<String, dynamic>? _additionalKwargs;
  // 额外信息
  @override
  Map<String, dynamic>? get additionalKwargs {
    final value = _additionalKwargs;
    if (value == null) return null;
    if (_additionalKwargs is EqualUnmodifiableMapView) return _additionalKwargs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HistoryMessage(role: $role, content: $content, timestamp: $timestamp, additionalKwargs: $additionalKwargs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(
              other._additionalKwargs,
              _additionalKwargs,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    role,
    content,
    timestamp,
    const DeepCollectionEquality().hash(_additionalKwargs),
  );

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryMessageImplCopyWith<_$HistoryMessageImpl> get copyWith =>
      __$$HistoryMessageImplCopyWithImpl<_$HistoryMessageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryMessageImplToJson(this);
  }
}

abstract class _HistoryMessage implements HistoryMessage {
  const factory _HistoryMessage({
    required final String role,
    required final String content,
    required final int timestamp,
    final Map<String, dynamic>? additionalKwargs,
  }) = _$HistoryMessageImpl;

  factory _HistoryMessage.fromJson(Map<String, dynamic> json) =
      _$HistoryMessageImpl.fromJson;

  // 角色
  @override
  String get role; // 内容
  @override
  String get content; // 时间戳
  @override
  int get timestamp; // 额外信息
  @override
  Map<String, dynamic>? get additionalKwargs;

  /// Create a copy of HistoryMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryMessageImplCopyWith<_$HistoryMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionHistoryResponse _$SessionHistoryResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SessionHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionHistoryResponse {
  // 会话 ID
  String get sessionId => throw _privateConstructorUsedError; // 历史消息
  List<HistoryMessage> get history => throw _privateConstructorUsedError;

  /// Serializes this SessionHistoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionHistoryResponseCopyWith<SessionHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionHistoryResponseCopyWith<$Res> {
  factory $SessionHistoryResponseCopyWith(
    SessionHistoryResponse value,
    $Res Function(SessionHistoryResponse) then,
  ) = _$SessionHistoryResponseCopyWithImpl<$Res, SessionHistoryResponse>;
  @useResult
  $Res call({String sessionId, List<HistoryMessage> history});
}

/// @nodoc
class _$SessionHistoryResponseCopyWithImpl<
  $Res,
  $Val extends SessionHistoryResponse
>
    implements $SessionHistoryResponseCopyWith<$Res> {
  _$SessionHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionId = null, Object? history = null}) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            history: null == history
                ? _value.history
                : history // ignore: cast_nullable_to_non_nullable
                      as List<HistoryMessage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionHistoryResponseImplCopyWith<$Res>
    implements $SessionHistoryResponseCopyWith<$Res> {
  factory _$$SessionHistoryResponseImplCopyWith(
    _$SessionHistoryResponseImpl value,
    $Res Function(_$SessionHistoryResponseImpl) then,
  ) = __$$SessionHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, List<HistoryMessage> history});
}

/// @nodoc
class __$$SessionHistoryResponseImplCopyWithImpl<$Res>
    extends
        _$SessionHistoryResponseCopyWithImpl<$Res, _$SessionHistoryResponseImpl>
    implements _$$SessionHistoryResponseImplCopyWith<$Res> {
  __$$SessionHistoryResponseImplCopyWithImpl(
    _$SessionHistoryResponseImpl _value,
    $Res Function(_$SessionHistoryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionId = null, Object? history = null}) {
    return _then(
      _$SessionHistoryResponseImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        history: null == history
            ? _value._history
            : history // ignore: cast_nullable_to_non_nullable
                  as List<HistoryMessage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionHistoryResponseImpl implements _SessionHistoryResponse {
  const _$SessionHistoryResponseImpl({
    required this.sessionId,
    required final List<HistoryMessage> history,
  }) : _history = history;

  factory _$SessionHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionHistoryResponseImplFromJson(json);

  // 会话 ID
  @override
  final String sessionId;
  // 历史消息
  final List<HistoryMessage> _history;
  // 历史消息
  @override
  List<HistoryMessage> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'SessionHistoryResponse(sessionId: $sessionId, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionHistoryResponseImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    const DeepCollectionEquality().hash(_history),
  );

  /// Create a copy of SessionHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionHistoryResponseImplCopyWith<_$SessionHistoryResponseImpl>
  get copyWith =>
      __$$SessionHistoryResponseImplCopyWithImpl<_$SessionHistoryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionHistoryResponseImplToJson(this);
  }
}

abstract class _SessionHistoryResponse implements SessionHistoryResponse {
  const factory _SessionHistoryResponse({
    required final String sessionId,
    required final List<HistoryMessage> history,
  }) = _$SessionHistoryResponseImpl;

  factory _SessionHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$SessionHistoryResponseImpl.fromJson;

  // 会话 ID
  @override
  String get sessionId; // 历史消息
  @override
  List<HistoryMessage> get history;

  /// Create a copy of SessionHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionHistoryResponseImplCopyWith<_$SessionHistoryResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
