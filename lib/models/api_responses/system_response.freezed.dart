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

HealthResponse _$HealthResponseFromJson(Map<String, dynamic> json) {
  return _HealthResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthResponse {
  String get status => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

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
  $Res call({String status, String? version});
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
  $Res call({Object? status = null, Object? version = freezed}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
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
  $Res call({String status, String? version});
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
  $Res call({Object? status = null, Object? version = freezed}) {
    return _then(
      _$HealthResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthResponseImpl implements _HealthResponse {
  const _$HealthResponseImpl({required this.status, this.version});

  factory _$HealthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? version;

  @override
  String toString() {
    return 'HealthResponse(status: $status, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, version);

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
    final String? version,
  }) = _$HealthResponseImpl;

  factory _HealthResponse.fromJson(Map<String, dynamic> json) =
      _$HealthResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get version;

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
  int? get totalDocuments => throw _privateConstructorUsedError;
  int? get totalChunks => throw _privateConstructorUsedError;
  int? get totalVectors => throw _privateConstructorUsedError;
  String? get lastUpdated => throw _privateConstructorUsedError;

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
  $Res call({
    int? totalDocuments,
    int? totalChunks,
    int? totalVectors,
    String? lastUpdated,
  });
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
  $Res call({
    Object? totalDocuments = freezed,
    Object? totalChunks = freezed,
    Object? totalVectors = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalDocuments: freezed == totalDocuments
                ? _value.totalDocuments
                : totalDocuments // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalChunks: freezed == totalChunks
                ? _value.totalChunks
                : totalChunks // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalVectors: freezed == totalVectors
                ? _value.totalVectors
                : totalVectors // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastUpdated: freezed == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as String?,
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
  $Res call({
    int? totalDocuments,
    int? totalChunks,
    int? totalVectors,
    String? lastUpdated,
  });
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
  $Res call({
    Object? totalDocuments = freezed,
    Object? totalChunks = freezed,
    Object? totalVectors = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _$StatsResponseImpl(
        totalDocuments: freezed == totalDocuments
            ? _value.totalDocuments
            : totalDocuments // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalChunks: freezed == totalChunks
            ? _value.totalChunks
            : totalChunks // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalVectors: freezed == totalVectors
            ? _value.totalVectors
            : totalVectors // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastUpdated: freezed == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsResponseImpl implements _StatsResponse {
  const _$StatsResponseImpl({
    this.totalDocuments,
    this.totalChunks,
    this.totalVectors,
    this.lastUpdated,
  });

  factory _$StatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsResponseImplFromJson(json);

  @override
  final int? totalDocuments;
  @override
  final int? totalChunks;
  @override
  final int? totalVectors;
  @override
  final String? lastUpdated;

  @override
  String toString() {
    return 'StatsResponse(totalDocuments: $totalDocuments, totalChunks: $totalChunks, totalVectors: $totalVectors, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsResponseImpl &&
            (identical(other.totalDocuments, totalDocuments) ||
                other.totalDocuments == totalDocuments) &&
            (identical(other.totalChunks, totalChunks) ||
                other.totalChunks == totalChunks) &&
            (identical(other.totalVectors, totalVectors) ||
                other.totalVectors == totalVectors) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalDocuments,
    totalChunks,
    totalVectors,
    lastUpdated,
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
    final int? totalDocuments,
    final int? totalChunks,
    final int? totalVectors,
    final String? lastUpdated,
  }) = _$StatsResponseImpl;

  factory _StatsResponse.fromJson(Map<String, dynamic> json) =
      _$StatsResponseImpl.fromJson;

  @override
  int? get totalDocuments;
  @override
  int? get totalChunks;
  @override
  int? get totalVectors;
  @override
  String? get lastUpdated;

  /// Create a copy of StatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsResponseImplCopyWith<_$StatsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatabaseInfoResponse _$DatabaseInfoResponseFromJson(Map<String, dynamic> json) {
  return _DatabaseInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$DatabaseInfoResponse {
  String? get dbName => throw _privateConstructorUsedError;
  String? get dbSource => throw _privateConstructorUsedError;
  List<TableInfo>? get tables => throw _privateConstructorUsedError;
  String? get connectionStatus => throw _privateConstructorUsedError;

  /// Serializes this DatabaseInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatabaseInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatabaseInfoResponseCopyWith<DatabaseInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseInfoResponseCopyWith<$Res> {
  factory $DatabaseInfoResponseCopyWith(
    DatabaseInfoResponse value,
    $Res Function(DatabaseInfoResponse) then,
  ) = _$DatabaseInfoResponseCopyWithImpl<$Res, DatabaseInfoResponse>;
  @useResult
  $Res call({
    String? dbName,
    String? dbSource,
    List<TableInfo>? tables,
    String? connectionStatus,
  });
}

/// @nodoc
class _$DatabaseInfoResponseCopyWithImpl<
  $Res,
  $Val extends DatabaseInfoResponse
>
    implements $DatabaseInfoResponseCopyWith<$Res> {
  _$DatabaseInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatabaseInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbName = freezed,
    Object? dbSource = freezed,
    Object? tables = freezed,
    Object? connectionStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            dbName: freezed == dbName
                ? _value.dbName
                : dbName // ignore: cast_nullable_to_non_nullable
                      as String?,
            dbSource: freezed == dbSource
                ? _value.dbSource
                : dbSource // ignore: cast_nullable_to_non_nullable
                      as String?,
            tables: freezed == tables
                ? _value.tables
                : tables // ignore: cast_nullable_to_non_nullable
                      as List<TableInfo>?,
            connectionStatus: freezed == connectionStatus
                ? _value.connectionStatus
                : connectionStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatabaseInfoResponseImplCopyWith<$Res>
    implements $DatabaseInfoResponseCopyWith<$Res> {
  factory _$$DatabaseInfoResponseImplCopyWith(
    _$DatabaseInfoResponseImpl value,
    $Res Function(_$DatabaseInfoResponseImpl) then,
  ) = __$$DatabaseInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? dbName,
    String? dbSource,
    List<TableInfo>? tables,
    String? connectionStatus,
  });
}

/// @nodoc
class __$$DatabaseInfoResponseImplCopyWithImpl<$Res>
    extends _$DatabaseInfoResponseCopyWithImpl<$Res, _$DatabaseInfoResponseImpl>
    implements _$$DatabaseInfoResponseImplCopyWith<$Res> {
  __$$DatabaseInfoResponseImplCopyWithImpl(
    _$DatabaseInfoResponseImpl _value,
    $Res Function(_$DatabaseInfoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatabaseInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbName = freezed,
    Object? dbSource = freezed,
    Object? tables = freezed,
    Object? connectionStatus = freezed,
  }) {
    return _then(
      _$DatabaseInfoResponseImpl(
        dbName: freezed == dbName
            ? _value.dbName
            : dbName // ignore: cast_nullable_to_non_nullable
                  as String?,
        dbSource: freezed == dbSource
            ? _value.dbSource
            : dbSource // ignore: cast_nullable_to_non_nullable
                  as String?,
        tables: freezed == tables
            ? _value._tables
            : tables // ignore: cast_nullable_to_non_nullable
                  as List<TableInfo>?,
        connectionStatus: freezed == connectionStatus
            ? _value.connectionStatus
            : connectionStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatabaseInfoResponseImpl implements _DatabaseInfoResponse {
  const _$DatabaseInfoResponseImpl({
    this.dbName,
    this.dbSource,
    final List<TableInfo>? tables,
    this.connectionStatus,
  }) : _tables = tables;

  factory _$DatabaseInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatabaseInfoResponseImplFromJson(json);

  @override
  final String? dbName;
  @override
  final String? dbSource;
  final List<TableInfo>? _tables;
  @override
  List<TableInfo>? get tables {
    final value = _tables;
    if (value == null) return null;
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? connectionStatus;

  @override
  String toString() {
    return 'DatabaseInfoResponse(dbName: $dbName, dbSource: $dbSource, tables: $tables, connectionStatus: $connectionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseInfoResponseImpl &&
            (identical(other.dbName, dbName) || other.dbName == dbName) &&
            (identical(other.dbSource, dbSource) ||
                other.dbSource == dbSource) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dbName,
    dbSource,
    const DeepCollectionEquality().hash(_tables),
    connectionStatus,
  );

  /// Create a copy of DatabaseInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseInfoResponseImplCopyWith<_$DatabaseInfoResponseImpl>
  get copyWith =>
      __$$DatabaseInfoResponseImplCopyWithImpl<_$DatabaseInfoResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DatabaseInfoResponseImplToJson(this);
  }
}

abstract class _DatabaseInfoResponse implements DatabaseInfoResponse {
  const factory _DatabaseInfoResponse({
    final String? dbName,
    final String? dbSource,
    final List<TableInfo>? tables,
    final String? connectionStatus,
  }) = _$DatabaseInfoResponseImpl;

  factory _DatabaseInfoResponse.fromJson(Map<String, dynamic> json) =
      _$DatabaseInfoResponseImpl.fromJson;

  @override
  String? get dbName;
  @override
  String? get dbSource;
  @override
  List<TableInfo>? get tables;
  @override
  String? get connectionStatus;

  /// Create a copy of DatabaseInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseInfoResponseImplCopyWith<_$DatabaseInfoResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TableInfo _$TableInfoFromJson(Map<String, dynamic> json) {
  return _TableInfo.fromJson(json);
}

/// @nodoc
mixin _$TableInfo {
  String get name => throw _privateConstructorUsedError;
  int? get rowCount => throw _privateConstructorUsedError;
  List<ColumnInfo>? get columns => throw _privateConstructorUsedError;

  /// Serializes this TableInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableInfoCopyWith<TableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableInfoCopyWith<$Res> {
  factory $TableInfoCopyWith(TableInfo value, $Res Function(TableInfo) then) =
      _$TableInfoCopyWithImpl<$Res, TableInfo>;
  @useResult
  $Res call({String name, int? rowCount, List<ColumnInfo>? columns});
}

/// @nodoc
class _$TableInfoCopyWithImpl<$Res, $Val extends TableInfo>
    implements $TableInfoCopyWith<$Res> {
  _$TableInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rowCount = freezed,
    Object? columns = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            rowCount: freezed == rowCount
                ? _value.rowCount
                : rowCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            columns: freezed == columns
                ? _value.columns
                : columns // ignore: cast_nullable_to_non_nullable
                      as List<ColumnInfo>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TableInfoImplCopyWith<$Res>
    implements $TableInfoCopyWith<$Res> {
  factory _$$TableInfoImplCopyWith(
    _$TableInfoImpl value,
    $Res Function(_$TableInfoImpl) then,
  ) = __$$TableInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? rowCount, List<ColumnInfo>? columns});
}

/// @nodoc
class __$$TableInfoImplCopyWithImpl<$Res>
    extends _$TableInfoCopyWithImpl<$Res, _$TableInfoImpl>
    implements _$$TableInfoImplCopyWith<$Res> {
  __$$TableInfoImplCopyWithImpl(
    _$TableInfoImpl _value,
    $Res Function(_$TableInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rowCount = freezed,
    Object? columns = freezed,
  }) {
    return _then(
      _$TableInfoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        rowCount: freezed == rowCount
            ? _value.rowCount
            : rowCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        columns: freezed == columns
            ? _value._columns
            : columns // ignore: cast_nullable_to_non_nullable
                  as List<ColumnInfo>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TableInfoImpl implements _TableInfo {
  const _$TableInfoImpl({
    required this.name,
    this.rowCount,
    final List<ColumnInfo>? columns,
  }) : _columns = columns;

  factory _$TableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableInfoImplFromJson(json);

  @override
  final String name;
  @override
  final int? rowCount;
  final List<ColumnInfo>? _columns;
  @override
  List<ColumnInfo>? get columns {
    final value = _columns;
    if (value == null) return null;
    if (_columns is EqualUnmodifiableListView) return _columns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TableInfo(name: $name, rowCount: $rowCount, columns: $columns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rowCount, rowCount) ||
                other.rowCount == rowCount) &&
            const DeepCollectionEquality().equals(other._columns, _columns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    rowCount,
    const DeepCollectionEquality().hash(_columns),
  );

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableInfoImplCopyWith<_$TableInfoImpl> get copyWith =>
      __$$TableInfoImplCopyWithImpl<_$TableInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableInfoImplToJson(this);
  }
}

abstract class _TableInfo implements TableInfo {
  const factory _TableInfo({
    required final String name,
    final int? rowCount,
    final List<ColumnInfo>? columns,
  }) = _$TableInfoImpl;

  factory _TableInfo.fromJson(Map<String, dynamic> json) =
      _$TableInfoImpl.fromJson;

  @override
  String get name;
  @override
  int? get rowCount;
  @override
  List<ColumnInfo>? get columns;

  /// Create a copy of TableInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableInfoImplCopyWith<_$TableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColumnInfo _$ColumnInfoFromJson(Map<String, dynamic> json) {
  return _ColumnInfo.fromJson(json);
}

/// @nodoc
mixin _$ColumnInfo {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool? get nullable => throw _privateConstructorUsedError;

  /// Serializes this ColumnInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColumnInfoCopyWith<ColumnInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnInfoCopyWith<$Res> {
  factory $ColumnInfoCopyWith(
    ColumnInfo value,
    $Res Function(ColumnInfo) then,
  ) = _$ColumnInfoCopyWithImpl<$Res, ColumnInfo>;
  @useResult
  $Res call({String name, String type, bool? nullable});
}

/// @nodoc
class _$ColumnInfoCopyWithImpl<$Res, $Val extends ColumnInfo>
    implements $ColumnInfoCopyWith<$Res> {
  _$ColumnInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? nullable = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            nullable: freezed == nullable
                ? _value.nullable
                : nullable // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColumnInfoImplCopyWith<$Res>
    implements $ColumnInfoCopyWith<$Res> {
  factory _$$ColumnInfoImplCopyWith(
    _$ColumnInfoImpl value,
    $Res Function(_$ColumnInfoImpl) then,
  ) = __$$ColumnInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, bool? nullable});
}

/// @nodoc
class __$$ColumnInfoImplCopyWithImpl<$Res>
    extends _$ColumnInfoCopyWithImpl<$Res, _$ColumnInfoImpl>
    implements _$$ColumnInfoImplCopyWith<$Res> {
  __$$ColumnInfoImplCopyWithImpl(
    _$ColumnInfoImpl _value,
    $Res Function(_$ColumnInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? nullable = freezed,
  }) {
    return _then(
      _$ColumnInfoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        nullable: freezed == nullable
            ? _value.nullable
            : nullable // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ColumnInfoImpl implements _ColumnInfo {
  const _$ColumnInfoImpl({
    required this.name,
    required this.type,
    this.nullable,
  });

  factory _$ColumnInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColumnInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final bool? nullable;

  @override
  String toString() {
    return 'ColumnInfo(name: $name, type: $type, nullable: $nullable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nullable, nullable) ||
                other.nullable == nullable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, nullable);

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnInfoImplCopyWith<_$ColumnInfoImpl> get copyWith =>
      __$$ColumnInfoImplCopyWithImpl<_$ColumnInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColumnInfoImplToJson(this);
  }
}

abstract class _ColumnInfo implements ColumnInfo {
  const factory _ColumnInfo({
    required final String name,
    required final String type,
    final bool? nullable,
  }) = _$ColumnInfoImpl;

  factory _ColumnInfo.fromJson(Map<String, dynamic> json) =
      _$ColumnInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  bool? get nullable;

  /// Create a copy of ColumnInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColumnInfoImplCopyWith<_$ColumnInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranscribeResult _$TranscribeResultFromJson(Map<String, dynamic> json) {
  return _TranscribeResult.fromJson(json);
}

/// @nodoc
mixin _$TranscribeResult {
  // 转写文本
  String get text => throw _privateConstructorUsedError; // 语言
  String? get language => throw _privateConstructorUsedError; // 置信度
  double? get confidence => throw _privateConstructorUsedError; // 时长（秒）
  double? get duration => throw _privateConstructorUsedError;

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
    double? confidence,
    double? duration,
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
    Object? confidence = freezed,
    Object? duration = freezed,
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
            confidence: freezed == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                      as double?,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as double?,
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
    double? confidence,
    double? duration,
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
    Object? confidence = freezed,
    Object? duration = freezed,
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
        confidence: freezed == confidence
            ? _value.confidence
            : confidence // ignore: cast_nullable_to_non_nullable
                  as double?,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as double?,
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
    this.confidence,
    this.duration,
  });

  factory _$TranscribeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranscribeResultImplFromJson(json);

  // 转写文本
  @override
  final String text;
  // 语言
  @override
  final String? language;
  // 置信度
  @override
  final double? confidence;
  // 时长（秒）
  @override
  final double? duration;

  @override
  String toString() {
    return 'TranscribeResult(text: $text, language: $language, confidence: $confidence, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscribeResultImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, language, confidence, duration);

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
    final double? confidence,
    final double? duration,
  }) = _$TranscribeResultImpl;

  factory _TranscribeResult.fromJson(Map<String, dynamic> json) =
      _$TranscribeResultImpl.fromJson;

  // 转写文本
  @override
  String get text; // 语言
  @override
  String? get language; // 置信度
  @override
  double? get confidence; // 时长（秒）
  @override
  double? get duration;

  /// Create a copy of TranscribeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranscribeResultImplCopyWith<_$TranscribeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
