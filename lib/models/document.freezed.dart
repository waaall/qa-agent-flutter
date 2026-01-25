// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  // 文件名
  String get filename => throw _privateConstructorUsedError; // 标签
  String get label => throw _privateConstructorUsedError; // 上传时间
  String get uploadedAt => throw _privateConstructorUsedError; // 文件大小（字节）
  int? get size => throw _privateConstructorUsedError; // 状态
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call({
    String filename,
    String label,
    String uploadedAt,
    int? size,
    String? status,
  });
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? label = null,
    Object? uploadedAt = null,
    Object? size = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            filename: null == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            uploadedAt: null == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            size: freezed == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
    _$DocumentImpl value,
    $Res Function(_$DocumentImpl) then,
  ) = __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String filename,
    String label,
    String uploadedAt,
    int? size,
    String? status,
  });
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
    _$DocumentImpl _value,
    $Res Function(_$DocumentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? label = null,
    Object? uploadedAt = null,
    Object? size = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$DocumentImpl(
        filename: null == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        uploadedAt: null == uploadedAt
            ? _value.uploadedAt
            : uploadedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        size: freezed == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl implements _Document {
  const _$DocumentImpl({
    required this.filename,
    required this.label,
    required this.uploadedAt,
    this.size,
    this.status,
  });

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  // 文件名
  @override
  final String filename;
  // 标签
  @override
  final String label;
  // 上传时间
  @override
  final String uploadedAt;
  // 文件大小（字节）
  @override
  final int? size;
  // 状态
  @override
  final String? status;

  @override
  String toString() {
    return 'Document(filename: $filename, label: $label, uploadedAt: $uploadedAt, size: $size, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filename, label, uploadedAt, size, status);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(this);
  }
}

abstract class _Document implements Document {
  const factory _Document({
    required final String filename,
    required final String label,
    required final String uploadedAt,
    final int? size,
    final String? status,
  }) = _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  // 文件名
  @override
  String get filename; // 标签
  @override
  String get label; // 上传时间
  @override
  String get uploadedAt; // 文件大小（字节）
  @override
  int? get size; // 状态
  @override
  String? get status;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListDocumentsResponse _$ListDocumentsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ListDocumentsResponse.fromJson(json);
}

/// @nodoc
mixin _$ListDocumentsResponse {
  List<Document> get documents => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ListDocumentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListDocumentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListDocumentsResponseCopyWith<ListDocumentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDocumentsResponseCopyWith<$Res> {
  factory $ListDocumentsResponseCopyWith(
    ListDocumentsResponse value,
    $Res Function(ListDocumentsResponse) then,
  ) = _$ListDocumentsResponseCopyWithImpl<$Res, ListDocumentsResponse>;
  @useResult
  $Res call({List<Document> documents, int count});
}

/// @nodoc
class _$ListDocumentsResponseCopyWithImpl<
  $Res,
  $Val extends ListDocumentsResponse
>
    implements $ListDocumentsResponseCopyWith<$Res> {
  _$ListDocumentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListDocumentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? documents = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            documents: null == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as List<Document>,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ListDocumentsResponseImplCopyWith<$Res>
    implements $ListDocumentsResponseCopyWith<$Res> {
  factory _$$ListDocumentsResponseImplCopyWith(
    _$ListDocumentsResponseImpl value,
    $Res Function(_$ListDocumentsResponseImpl) then,
  ) = __$$ListDocumentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Document> documents, int count});
}

/// @nodoc
class __$$ListDocumentsResponseImplCopyWithImpl<$Res>
    extends
        _$ListDocumentsResponseCopyWithImpl<$Res, _$ListDocumentsResponseImpl>
    implements _$$ListDocumentsResponseImplCopyWith<$Res> {
  __$$ListDocumentsResponseImplCopyWithImpl(
    _$ListDocumentsResponseImpl _value,
    $Res Function(_$ListDocumentsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ListDocumentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? documents = null, Object? count = null}) {
    return _then(
      _$ListDocumentsResponseImpl(
        documents: null == documents
            ? _value._documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as List<Document>,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDocumentsResponseImpl implements _ListDocumentsResponse {
  const _$ListDocumentsResponseImpl({
    required final List<Document> documents,
    required this.count,
  }) : _documents = documents;

  factory _$ListDocumentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDocumentsResponseImplFromJson(json);

  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'ListDocumentsResponse(documents: $documents, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDocumentsResponseImpl &&
            const DeepCollectionEquality().equals(
              other._documents,
              _documents,
            ) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_documents),
    count,
  );

  /// Create a copy of ListDocumentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDocumentsResponseImplCopyWith<_$ListDocumentsResponseImpl>
  get copyWith =>
      __$$ListDocumentsResponseImplCopyWithImpl<_$ListDocumentsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDocumentsResponseImplToJson(this);
  }
}

abstract class _ListDocumentsResponse implements ListDocumentsResponse {
  const factory _ListDocumentsResponse({
    required final List<Document> documents,
    required final int count,
  }) = _$ListDocumentsResponseImpl;

  factory _ListDocumentsResponse.fromJson(Map<String, dynamic> json) =
      _$ListDocumentsResponseImpl.fromJson;

  @override
  List<Document> get documents;
  @override
  int get count;

  /// Create a copy of ListDocumentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListDocumentsResponseImplCopyWith<_$ListDocumentsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
