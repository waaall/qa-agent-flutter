// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportContext _$ReportContextFromJson(Map<String, dynamic> json) {
  return _ReportContext.fromJson(json);
}

/// @nodoc
mixin _$ReportContext {
  String? get plant => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String? get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_no')
  String? get deviceNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_codes')
  List<String> get pointCodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'incident_id')
  String? get incidentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_constraints')
  List<String> get extraConstraints => throw _privateConstructorUsedError;

  /// Serializes this ReportContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportContextCopyWith<ReportContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportContextCopyWith<$Res> {
  factory $ReportContextCopyWith(
    ReportContext value,
    $Res Function(ReportContext) then,
  ) = _$ReportContextCopyWithImpl<$Res, ReportContext>;
  @useResult
  $Res call({
    String? plant,
    String? unit,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'device_no') String? deviceNo,
    @JsonKey(name: 'point_codes') List<String> pointCodes,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'incident_id') String? incidentId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'extra_constraints') List<String> extraConstraints,
  });
}

/// @nodoc
class _$ReportContextCopyWithImpl<$Res, $Val extends ReportContext>
    implements $ReportContextCopyWith<$Res> {
  _$ReportContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = freezed,
    Object? unit = freezed,
    Object? deviceType = freezed,
    Object? deviceNo = freezed,
    Object? pointCodes = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? incidentId = freezed,
    Object? sessionId = freezed,
    Object? extraConstraints = null,
  }) {
    return _then(
      _value.copyWith(
            plant: freezed == plant
                ? _value.plant
                : plant // ignore: cast_nullable_to_non_nullable
                      as String?,
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceType: freezed == deviceType
                ? _value.deviceType
                : deviceType // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceNo: freezed == deviceNo
                ? _value.deviceNo
                : deviceNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            pointCodes: null == pointCodes
                ? _value.pointCodes
                : pointCodes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            incidentId: freezed == incidentId
                ? _value.incidentId
                : incidentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            extraConstraints: null == extraConstraints
                ? _value.extraConstraints
                : extraConstraints // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportContextImplCopyWith<$Res>
    implements $ReportContextCopyWith<$Res> {
  factory _$$ReportContextImplCopyWith(
    _$ReportContextImpl value,
    $Res Function(_$ReportContextImpl) then,
  ) = __$$ReportContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? plant,
    String? unit,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'device_no') String? deviceNo,
    @JsonKey(name: 'point_codes') List<String> pointCodes,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'incident_id') String? incidentId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'extra_constraints') List<String> extraConstraints,
  });
}

/// @nodoc
class __$$ReportContextImplCopyWithImpl<$Res>
    extends _$ReportContextCopyWithImpl<$Res, _$ReportContextImpl>
    implements _$$ReportContextImplCopyWith<$Res> {
  __$$ReportContextImplCopyWithImpl(
    _$ReportContextImpl _value,
    $Res Function(_$ReportContextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = freezed,
    Object? unit = freezed,
    Object? deviceType = freezed,
    Object? deviceNo = freezed,
    Object? pointCodes = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? incidentId = freezed,
    Object? sessionId = freezed,
    Object? extraConstraints = null,
  }) {
    return _then(
      _$ReportContextImpl(
        plant: freezed == plant
            ? _value.plant
            : plant // ignore: cast_nullable_to_non_nullable
                  as String?,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceType: freezed == deviceType
            ? _value.deviceType
            : deviceType // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceNo: freezed == deviceNo
            ? _value.deviceNo
            : deviceNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        pointCodes: null == pointCodes
            ? _value._pointCodes
            : pointCodes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        incidentId: freezed == incidentId
            ? _value.incidentId
            : incidentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        extraConstraints: null == extraConstraints
            ? _value._extraConstraints
            : extraConstraints // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportContextImpl implements _ReportContext {
  const _$ReportContextImpl({
    this.plant,
    this.unit,
    @JsonKey(name: 'device_type') this.deviceType,
    @JsonKey(name: 'device_no') this.deviceNo,
    @JsonKey(name: 'point_codes') final List<String> pointCodes = const [],
    @JsonKey(name: 'start_time') this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'incident_id') this.incidentId,
    @JsonKey(name: 'session_id') this.sessionId,
    @JsonKey(name: 'extra_constraints')
    final List<String> extraConstraints = const [],
  }) : _pointCodes = pointCodes,
       _extraConstraints = extraConstraints;

  factory _$ReportContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportContextImplFromJson(json);

  @override
  final String? plant;
  @override
  final String? unit;
  @override
  @JsonKey(name: 'device_type')
  final String? deviceType;
  @override
  @JsonKey(name: 'device_no')
  final String? deviceNo;
  final List<String> _pointCodes;
  @override
  @JsonKey(name: 'point_codes')
  List<String> get pointCodes {
    if (_pointCodes is EqualUnmodifiableListView) return _pointCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pointCodes);
  }

  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'incident_id')
  final String? incidentId;
  @override
  @JsonKey(name: 'session_id')
  final String? sessionId;
  final List<String> _extraConstraints;
  @override
  @JsonKey(name: 'extra_constraints')
  List<String> get extraConstraints {
    if (_extraConstraints is EqualUnmodifiableListView)
      return _extraConstraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extraConstraints);
  }

  @override
  String toString() {
    return 'ReportContext(plant: $plant, unit: $unit, deviceType: $deviceType, deviceNo: $deviceNo, pointCodes: $pointCodes, startTime: $startTime, endTime: $endTime, incidentId: $incidentId, sessionId: $sessionId, extraConstraints: $extraConstraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportContextImpl &&
            (identical(other.plant, plant) || other.plant == plant) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.deviceNo, deviceNo) ||
                other.deviceNo == deviceNo) &&
            const DeepCollectionEquality().equals(
              other._pointCodes,
              _pointCodes,
            ) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.incidentId, incidentId) ||
                other.incidentId == incidentId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(
              other._extraConstraints,
              _extraConstraints,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    plant,
    unit,
    deviceType,
    deviceNo,
    const DeepCollectionEquality().hash(_pointCodes),
    startTime,
    endTime,
    incidentId,
    sessionId,
    const DeepCollectionEquality().hash(_extraConstraints),
  );

  /// Create a copy of ReportContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportContextImplCopyWith<_$ReportContextImpl> get copyWith =>
      __$$ReportContextImplCopyWithImpl<_$ReportContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportContextImplToJson(this);
  }
}

abstract class _ReportContext implements ReportContext {
  const factory _ReportContext({
    final String? plant,
    final String? unit,
    @JsonKey(name: 'device_type') final String? deviceType,
    @JsonKey(name: 'device_no') final String? deviceNo,
    @JsonKey(name: 'point_codes') final List<String> pointCodes,
    @JsonKey(name: 'start_time') final String? startTime,
    @JsonKey(name: 'end_time') final String? endTime,
    @JsonKey(name: 'incident_id') final String? incidentId,
    @JsonKey(name: 'session_id') final String? sessionId,
    @JsonKey(name: 'extra_constraints') final List<String> extraConstraints,
  }) = _$ReportContextImpl;

  factory _ReportContext.fromJson(Map<String, dynamic> json) =
      _$ReportContextImpl.fromJson;

  @override
  String? get plant;
  @override
  String? get unit;
  @override
  @JsonKey(name: 'device_type')
  String? get deviceType;
  @override
  @JsonKey(name: 'device_no')
  String? get deviceNo;
  @override
  @JsonKey(name: 'point_codes')
  List<String> get pointCodes;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'incident_id')
  String? get incidentId;
  @override
  @JsonKey(name: 'session_id')
  String? get sessionId;
  @override
  @JsonKey(name: 'extra_constraints')
  List<String> get extraConstraints;

  /// Create a copy of ReportContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportContextImplCopyWith<_$ReportContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportOutput _$ReportOutputFromJson(Map<String, dynamic> json) {
  return _ReportOutput.fromJson(json);
}

/// @nodoc
mixin _$ReportOutput {
  String get format => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  /// Serializes this ReportOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportOutputCopyWith<ReportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportOutputCopyWith<$Res> {
  factory $ReportOutputCopyWith(
    ReportOutput value,
    $Res Function(ReportOutput) then,
  ) = _$ReportOutputCopyWithImpl<$Res, ReportOutput>;
  @useResult
  $Res call({String format, String language});
}

/// @nodoc
class _$ReportOutputCopyWithImpl<$Res, $Val extends ReportOutput>
    implements $ReportOutputCopyWith<$Res> {
  _$ReportOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? format = null, Object? language = null}) {
    return _then(
      _value.copyWith(
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportOutputImplCopyWith<$Res>
    implements $ReportOutputCopyWith<$Res> {
  factory _$$ReportOutputImplCopyWith(
    _$ReportOutputImpl value,
    $Res Function(_$ReportOutputImpl) then,
  ) = __$$ReportOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String format, String language});
}

/// @nodoc
class __$$ReportOutputImplCopyWithImpl<$Res>
    extends _$ReportOutputCopyWithImpl<$Res, _$ReportOutputImpl>
    implements _$$ReportOutputImplCopyWith<$Res> {
  __$$ReportOutputImplCopyWithImpl(
    _$ReportOutputImpl _value,
    $Res Function(_$ReportOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? format = null, Object? language = null}) {
    return _then(
      _$ReportOutputImpl(
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportOutputImpl implements _ReportOutput {
  const _$ReportOutputImpl({this.format = 'markdown', this.language = 'zh-CN'});

  factory _$ReportOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportOutputImplFromJson(json);

  @override
  @JsonKey()
  final String format;
  @override
  @JsonKey()
  final String language;

  @override
  String toString() {
    return 'ReportOutput(format: $format, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportOutputImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, format, language);

  /// Create a copy of ReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportOutputImplCopyWith<_$ReportOutputImpl> get copyWith =>
      __$$ReportOutputImplCopyWithImpl<_$ReportOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportOutputImplToJson(this);
  }
}

abstract class _ReportOutput implements ReportOutput {
  const factory _ReportOutput({final String format, final String language}) =
      _$ReportOutputImpl;

  factory _ReportOutput.fromJson(Map<String, dynamic> json) =
      _$ReportOutputImpl.fromJson;

  @override
  String get format;
  @override
  String get language;

  /// Create a copy of ReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportOutputImplCopyWith<_$ReportOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReportRequest _$CreateReportRequestFromJson(Map<String, dynamic> json) {
  return _CreateReportRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateReportRequest {
  @JsonKey(name: 'report_type')
  ReportType get reportType => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  ReportContext get context => throw _privateConstructorUsedError;
  ReportOutput get output => throw _privateConstructorUsedError;

  /// Serializes this CreateReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReportRequestCopyWith<CreateReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportRequestCopyWith<$Res> {
  factory $CreateReportRequestCopyWith(
    CreateReportRequest value,
    $Res Function(CreateReportRequest) then,
  ) = _$CreateReportRequestCopyWithImpl<$Res, CreateReportRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'report_type') ReportType reportType,
    String question,
    String? title,
    ReportContext context,
    ReportOutput output,
  });

  $ReportContextCopyWith<$Res> get context;
  $ReportOutputCopyWith<$Res> get output;
}

/// @nodoc
class _$CreateReportRequestCopyWithImpl<$Res, $Val extends CreateReportRequest>
    implements $CreateReportRequestCopyWith<$Res> {
  _$CreateReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportType = null,
    Object? question = null,
    Object? title = freezed,
    Object? context = null,
    Object? output = null,
  }) {
    return _then(
      _value.copyWith(
            reportType: null == reportType
                ? _value.reportType
                : reportType // ignore: cast_nullable_to_non_nullable
                      as ReportType,
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            context: null == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                      as ReportContext,
            output: null == output
                ? _value.output
                : output // ignore: cast_nullable_to_non_nullable
                      as ReportOutput,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportContextCopyWith<$Res> get context {
    return $ReportContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportOutputCopyWith<$Res> get output {
    return $ReportOutputCopyWith<$Res>(_value.output, (value) {
      return _then(_value.copyWith(output: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateReportRequestImplCopyWith<$Res>
    implements $CreateReportRequestCopyWith<$Res> {
  factory _$$CreateReportRequestImplCopyWith(
    _$CreateReportRequestImpl value,
    $Res Function(_$CreateReportRequestImpl) then,
  ) = __$$CreateReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'report_type') ReportType reportType,
    String question,
    String? title,
    ReportContext context,
    ReportOutput output,
  });

  @override
  $ReportContextCopyWith<$Res> get context;
  @override
  $ReportOutputCopyWith<$Res> get output;
}

/// @nodoc
class __$$CreateReportRequestImplCopyWithImpl<$Res>
    extends _$CreateReportRequestCopyWithImpl<$Res, _$CreateReportRequestImpl>
    implements _$$CreateReportRequestImplCopyWith<$Res> {
  __$$CreateReportRequestImplCopyWithImpl(
    _$CreateReportRequestImpl _value,
    $Res Function(_$CreateReportRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportType = null,
    Object? question = null,
    Object? title = freezed,
    Object? context = null,
    Object? output = null,
  }) {
    return _then(
      _$CreateReportRequestImpl(
        reportType: null == reportType
            ? _value.reportType
            : reportType // ignore: cast_nullable_to_non_nullable
                  as ReportType,
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        context: null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as ReportContext,
        output: null == output
            ? _value.output
            : output // ignore: cast_nullable_to_non_nullable
                  as ReportOutput,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReportRequestImpl implements _CreateReportRequest {
  const _$CreateReportRequestImpl({
    @JsonKey(name: 'report_type') required this.reportType,
    required this.question,
    this.title,
    this.context = const ReportContext(),
    this.output = const ReportOutput(),
  });

  factory _$CreateReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReportRequestImplFromJson(json);

  @override
  @JsonKey(name: 'report_type')
  final ReportType reportType;
  @override
  final String question;
  @override
  final String? title;
  @override
  @JsonKey()
  final ReportContext context;
  @override
  @JsonKey()
  final ReportOutput output;

  @override
  String toString() {
    return 'CreateReportRequest(reportType: $reportType, question: $question, title: $title, context: $context, output: $output)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportRequestImpl &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reportType, question, title, context, output);

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportRequestImplCopyWith<_$CreateReportRequestImpl> get copyWith =>
      __$$CreateReportRequestImplCopyWithImpl<_$CreateReportRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReportRequestImplToJson(this);
  }
}

abstract class _CreateReportRequest implements CreateReportRequest {
  const factory _CreateReportRequest({
    @JsonKey(name: 'report_type') required final ReportType reportType,
    required final String question,
    final String? title,
    final ReportContext context,
    final ReportOutput output,
  }) = _$CreateReportRequestImpl;

  factory _CreateReportRequest.fromJson(Map<String, dynamic> json) =
      _$CreateReportRequestImpl.fromJson;

  @override
  @JsonKey(name: 'report_type')
  ReportType get reportType;
  @override
  String get question;
  @override
  String? get title;
  @override
  ReportContext get context;
  @override
  ReportOutput get output;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReportRequestImplCopyWith<_$CreateReportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportCreatedResponse _$ReportCreatedResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ReportCreatedResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportCreatedResponse {
  @JsonKey(name: 'report_id')
  String get reportId => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;

  /// Serializes this ReportCreatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCreatedResponseCopyWith<ReportCreatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCreatedResponseCopyWith<$Res> {
  factory $ReportCreatedResponseCopyWith(
    ReportCreatedResponse value,
    $Res Function(ReportCreatedResponse) then,
  ) = _$ReportCreatedResponseCopyWithImpl<$Res, ReportCreatedResponse>;
  @useResult
  $Res call({@JsonKey(name: 'report_id') String reportId, ReportStatus status});
}

/// @nodoc
class _$ReportCreatedResponseCopyWithImpl<
  $Res,
  $Val extends ReportCreatedResponse
>
    implements $ReportCreatedResponseCopyWith<$Res> {
  _$ReportCreatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportId = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            reportId: null == reportId
                ? _value.reportId
                : reportId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportCreatedResponseImplCopyWith<$Res>
    implements $ReportCreatedResponseCopyWith<$Res> {
  factory _$$ReportCreatedResponseImplCopyWith(
    _$ReportCreatedResponseImpl value,
    $Res Function(_$ReportCreatedResponseImpl) then,
  ) = __$$ReportCreatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'report_id') String reportId, ReportStatus status});
}

/// @nodoc
class __$$ReportCreatedResponseImplCopyWithImpl<$Res>
    extends
        _$ReportCreatedResponseCopyWithImpl<$Res, _$ReportCreatedResponseImpl>
    implements _$$ReportCreatedResponseImplCopyWith<$Res> {
  __$$ReportCreatedResponseImplCopyWithImpl(
    _$ReportCreatedResponseImpl _value,
    $Res Function(_$ReportCreatedResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportId = null, Object? status = null}) {
    return _then(
      _$ReportCreatedResponseImpl(
        reportId: null == reportId
            ? _value.reportId
            : reportId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportCreatedResponseImpl implements _ReportCreatedResponse {
  const _$ReportCreatedResponseImpl({
    @JsonKey(name: 'report_id') required this.reportId,
    required this.status,
  });

  factory _$ReportCreatedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportCreatedResponseImplFromJson(json);

  @override
  @JsonKey(name: 'report_id')
  final String reportId;
  @override
  final ReportStatus status;

  @override
  String toString() {
    return 'ReportCreatedResponse(reportId: $reportId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportCreatedResponseImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reportId, status);

  /// Create a copy of ReportCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportCreatedResponseImplCopyWith<_$ReportCreatedResponseImpl>
  get copyWith =>
      __$$ReportCreatedResponseImplCopyWithImpl<_$ReportCreatedResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportCreatedResponseImplToJson(this);
  }
}

abstract class _ReportCreatedResponse implements ReportCreatedResponse {
  const factory _ReportCreatedResponse({
    @JsonKey(name: 'report_id') required final String reportId,
    required final ReportStatus status,
  }) = _$ReportCreatedResponseImpl;

  factory _ReportCreatedResponse.fromJson(Map<String, dynamic> json) =
      _$ReportCreatedResponseImpl.fromJson;

  @override
  @JsonKey(name: 'report_id')
  String get reportId;
  @override
  ReportStatus get status;

  /// Create a copy of ReportCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportCreatedResponseImplCopyWith<_$ReportCreatedResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ReportProgress _$ReportProgressFromJson(Map<String, dynamic> json) {
  return _ReportProgress.fromJson(json);
}

/// @nodoc
mixin _$ReportProgress {
  String get phase => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'evidence_count')
  int get evidenceCount => throw _privateConstructorUsedError;

  /// Serializes this ReportProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportProgressCopyWith<ReportProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportProgressCopyWith<$Res> {
  factory $ReportProgressCopyWith(
    ReportProgress value,
    $Res Function(ReportProgress) then,
  ) = _$ReportProgressCopyWithImpl<$Res, ReportProgress>;
  @useResult
  $Res call({
    String phase,
    String message,
    @JsonKey(name: 'evidence_count') int evidenceCount,
  });
}

/// @nodoc
class _$ReportProgressCopyWithImpl<$Res, $Val extends ReportProgress>
    implements $ReportProgressCopyWith<$Res> {
  _$ReportProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? message = null,
    Object? evidenceCount = null,
  }) {
    return _then(
      _value.copyWith(
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            evidenceCount: null == evidenceCount
                ? _value.evidenceCount
                : evidenceCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportProgressImplCopyWith<$Res>
    implements $ReportProgressCopyWith<$Res> {
  factory _$$ReportProgressImplCopyWith(
    _$ReportProgressImpl value,
    $Res Function(_$ReportProgressImpl) then,
  ) = __$$ReportProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String phase,
    String message,
    @JsonKey(name: 'evidence_count') int evidenceCount,
  });
}

/// @nodoc
class __$$ReportProgressImplCopyWithImpl<$Res>
    extends _$ReportProgressCopyWithImpl<$Res, _$ReportProgressImpl>
    implements _$$ReportProgressImplCopyWith<$Res> {
  __$$ReportProgressImplCopyWithImpl(
    _$ReportProgressImpl _value,
    $Res Function(_$ReportProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? message = null,
    Object? evidenceCount = null,
  }) {
    return _then(
      _$ReportProgressImpl(
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        evidenceCount: null == evidenceCount
            ? _value.evidenceCount
            : evidenceCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportProgressImpl implements _ReportProgress {
  const _$ReportProgressImpl({
    this.phase = '',
    this.message = '',
    @JsonKey(name: 'evidence_count') this.evidenceCount = 0,
  });

  factory _$ReportProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportProgressImplFromJson(json);

  @override
  @JsonKey()
  final String phase;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(name: 'evidence_count')
  final int evidenceCount;

  @override
  String toString() {
    return 'ReportProgress(phase: $phase, message: $message, evidenceCount: $evidenceCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportProgressImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.evidenceCount, evidenceCount) ||
                other.evidenceCount == evidenceCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phase, message, evidenceCount);

  /// Create a copy of ReportProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportProgressImplCopyWith<_$ReportProgressImpl> get copyWith =>
      __$$ReportProgressImplCopyWithImpl<_$ReportProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportProgressImplToJson(this);
  }
}

abstract class _ReportProgress implements ReportProgress {
  const factory _ReportProgress({
    final String phase,
    final String message,
    @JsonKey(name: 'evidence_count') final int evidenceCount,
  }) = _$ReportProgressImpl;

  factory _ReportProgress.fromJson(Map<String, dynamic> json) =
      _$ReportProgressImpl.fromJson;

  @override
  String get phase;
  @override
  String get message;
  @override
  @JsonKey(name: 'evidence_count')
  int get evidenceCount;

  /// Create a copy of ReportProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportProgressImplCopyWith<_$ReportProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportArtifact _$ReportArtifactFromJson(Map<String, dynamic> json) {
  return _ReportArtifact.fromJson(json);
}

/// @nodoc
mixin _$ReportArtifact {
  String get name => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;

  /// Serializes this ReportArtifact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportArtifact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportArtifactCopyWith<ReportArtifact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportArtifactCopyWith<$Res> {
  factory $ReportArtifactCopyWith(
    ReportArtifact value,
    $Res Function(ReportArtifact) then,
  ) = _$ReportArtifactCopyWithImpl<$Res, ReportArtifact>;
  @useResult
  $Res call({String name, String kind});
}

/// @nodoc
class _$ReportArtifactCopyWithImpl<$Res, $Val extends ReportArtifact>
    implements $ReportArtifactCopyWith<$Res> {
  _$ReportArtifactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportArtifact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? kind = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            kind: null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportArtifactImplCopyWith<$Res>
    implements $ReportArtifactCopyWith<$Res> {
  factory _$$ReportArtifactImplCopyWith(
    _$ReportArtifactImpl value,
    $Res Function(_$ReportArtifactImpl) then,
  ) = __$$ReportArtifactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String kind});
}

/// @nodoc
class __$$ReportArtifactImplCopyWithImpl<$Res>
    extends _$ReportArtifactCopyWithImpl<$Res, _$ReportArtifactImpl>
    implements _$$ReportArtifactImplCopyWith<$Res> {
  __$$ReportArtifactImplCopyWithImpl(
    _$ReportArtifactImpl _value,
    $Res Function(_$ReportArtifactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportArtifact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? kind = null}) {
    return _then(
      _$ReportArtifactImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        kind: null == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportArtifactImpl implements _ReportArtifact {
  const _$ReportArtifactImpl({required this.name, required this.kind});

  factory _$ReportArtifactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportArtifactImplFromJson(json);

  @override
  final String name;
  @override
  final String kind;

  @override
  String toString() {
    return 'ReportArtifact(name: $name, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportArtifactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, kind);

  /// Create a copy of ReportArtifact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportArtifactImplCopyWith<_$ReportArtifactImpl> get copyWith =>
      __$$ReportArtifactImplCopyWithImpl<_$ReportArtifactImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportArtifactImplToJson(this);
  }
}

abstract class _ReportArtifact implements ReportArtifact {
  const factory _ReportArtifact({
    required final String name,
    required final String kind,
  }) = _$ReportArtifactImpl;

  factory _ReportArtifact.fromJson(Map<String, dynamic> json) =
      _$ReportArtifactImpl.fromJson;

  @override
  String get name;
  @override
  String get kind;

  /// Create a copy of ReportArtifact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportArtifactImplCopyWith<_$ReportArtifactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportStatusResponse _$ReportStatusResponseFromJson(Map<String, dynamic> json) {
  return _ReportStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportStatusResponse {
  @JsonKey(name: 'report_id')
  String get reportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_type')
  ReportType get reportType => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  ReportProgress get progress => throw _privateConstructorUsedError;
  List<ReportArtifact> get artifacts => throw _privateConstructorUsedError;
  Map<String, dynamic>? get error => throw _privateConstructorUsedError;

  /// Serializes this ReportStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportStatusResponseCopyWith<ReportStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStatusResponseCopyWith<$Res> {
  factory $ReportStatusResponseCopyWith(
    ReportStatusResponse value,
    $Res Function(ReportStatusResponse) then,
  ) = _$ReportStatusResponseCopyWithImpl<$Res, ReportStatusResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'report_id') String reportId,
    @JsonKey(name: 'report_type') ReportType reportType,
    ReportStatus status,
    ReportProgress progress,
    List<ReportArtifact> artifacts,
    Map<String, dynamic>? error,
  });

  $ReportProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$ReportStatusResponseCopyWithImpl<
  $Res,
  $Val extends ReportStatusResponse
>
    implements $ReportStatusResponseCopyWith<$Res> {
  _$ReportStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportType = null,
    Object? status = null,
    Object? progress = null,
    Object? artifacts = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            reportId: null == reportId
                ? _value.reportId
                : reportId // ignore: cast_nullable_to_non_nullable
                      as String,
            reportType: null == reportType
                ? _value.reportType
                : reportType // ignore: cast_nullable_to_non_nullable
                      as ReportType,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as ReportProgress,
            artifacts: null == artifacts
                ? _value.artifacts
                : artifacts // ignore: cast_nullable_to_non_nullable
                      as List<ReportArtifact>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportProgressCopyWith<$Res> get progress {
    return $ReportProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportStatusResponseImplCopyWith<$Res>
    implements $ReportStatusResponseCopyWith<$Res> {
  factory _$$ReportStatusResponseImplCopyWith(
    _$ReportStatusResponseImpl value,
    $Res Function(_$ReportStatusResponseImpl) then,
  ) = __$$ReportStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'report_id') String reportId,
    @JsonKey(name: 'report_type') ReportType reportType,
    ReportStatus status,
    ReportProgress progress,
    List<ReportArtifact> artifacts,
    Map<String, dynamic>? error,
  });

  @override
  $ReportProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$ReportStatusResponseImplCopyWithImpl<$Res>
    extends _$ReportStatusResponseCopyWithImpl<$Res, _$ReportStatusResponseImpl>
    implements _$$ReportStatusResponseImplCopyWith<$Res> {
  __$$ReportStatusResponseImplCopyWithImpl(
    _$ReportStatusResponseImpl _value,
    $Res Function(_$ReportStatusResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportType = null,
    Object? status = null,
    Object? progress = null,
    Object? artifacts = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ReportStatusResponseImpl(
        reportId: null == reportId
            ? _value.reportId
            : reportId // ignore: cast_nullable_to_non_nullable
                  as String,
        reportType: null == reportType
            ? _value.reportType
            : reportType // ignore: cast_nullable_to_non_nullable
                  as ReportType,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as ReportProgress,
        artifacts: null == artifacts
            ? _value._artifacts
            : artifacts // ignore: cast_nullable_to_non_nullable
                  as List<ReportArtifact>,
        error: freezed == error
            ? _value._error
            : error // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportStatusResponseImpl implements _ReportStatusResponse {
  const _$ReportStatusResponseImpl({
    @JsonKey(name: 'report_id') required this.reportId,
    @JsonKey(name: 'report_type') required this.reportType,
    required this.status,
    required this.progress,
    final List<ReportArtifact> artifacts = const [],
    final Map<String, dynamic>? error,
  }) : _artifacts = artifacts,
       _error = error;

  factory _$ReportStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: 'report_id')
  final String reportId;
  @override
  @JsonKey(name: 'report_type')
  final ReportType reportType;
  @override
  final ReportStatus status;
  @override
  final ReportProgress progress;
  final List<ReportArtifact> _artifacts;
  @override
  @JsonKey()
  List<ReportArtifact> get artifacts {
    if (_artifacts is EqualUnmodifiableListView) return _artifacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artifacts);
  }

  final Map<String, dynamic>? _error;
  @override
  Map<String, dynamic>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableMapView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReportStatusResponse(reportId: $reportId, reportType: $reportType, status: $status, progress: $progress, artifacts: $artifacts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStatusResponseImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(
              other._artifacts,
              _artifacts,
            ) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    reportId,
    reportType,
    status,
    progress,
    const DeepCollectionEquality().hash(_artifacts),
    const DeepCollectionEquality().hash(_error),
  );

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStatusResponseImplCopyWith<_$ReportStatusResponseImpl>
  get copyWith =>
      __$$ReportStatusResponseImplCopyWithImpl<_$ReportStatusResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportStatusResponseImplToJson(this);
  }
}

abstract class _ReportStatusResponse implements ReportStatusResponse {
  const factory _ReportStatusResponse({
    @JsonKey(name: 'report_id') required final String reportId,
    @JsonKey(name: 'report_type') required final ReportType reportType,
    required final ReportStatus status,
    required final ReportProgress progress,
    final List<ReportArtifact> artifacts,
    final Map<String, dynamic>? error,
  }) = _$ReportStatusResponseImpl;

  factory _ReportStatusResponse.fromJson(Map<String, dynamic> json) =
      _$ReportStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: 'report_id')
  String get reportId;
  @override
  @JsonKey(name: 'report_type')
  ReportType get reportType;
  @override
  ReportStatus get status;
  @override
  ReportProgress get progress;
  @override
  List<ReportArtifact> get artifacts;
  @override
  Map<String, dynamic>? get error;

  /// Create a copy of ReportStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportStatusResponseImplCopyWith<_$ReportStatusResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ReportSummary _$ReportSummaryFromJson(Map<String, dynamic> json) {
  return _ReportSummary.fromJson(json);
}

/// @nodoc
mixin _$ReportSummary {
  @JsonKey(name: 'report_id')
  String get reportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_type')
  ReportType get reportType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_accessed')
  int get lastAccessed => throw _privateConstructorUsedError;

  /// Serializes this ReportSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportSummaryCopyWith<ReportSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportSummaryCopyWith<$Res> {
  factory $ReportSummaryCopyWith(
    ReportSummary value,
    $Res Function(ReportSummary) then,
  ) = _$ReportSummaryCopyWithImpl<$Res, ReportSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'report_id') String reportId,
    @JsonKey(name: 'report_type') ReportType reportType,
    String title,
    String question,
    ReportStatus status,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'last_accessed') int lastAccessed,
  });
}

/// @nodoc
class _$ReportSummaryCopyWithImpl<$Res, $Val extends ReportSummary>
    implements $ReportSummaryCopyWith<$Res> {
  _$ReportSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportType = null,
    Object? title = null,
    Object? question = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastAccessed = null,
  }) {
    return _then(
      _value.copyWith(
            reportId: null == reportId
                ? _value.reportId
                : reportId // ignore: cast_nullable_to_non_nullable
                      as String,
            reportType: null == reportType
                ? _value.reportType
                : reportType // ignore: cast_nullable_to_non_nullable
                      as ReportType,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as int,
            lastAccessed: null == lastAccessed
                ? _value.lastAccessed
                : lastAccessed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportSummaryImplCopyWith<$Res>
    implements $ReportSummaryCopyWith<$Res> {
  factory _$$ReportSummaryImplCopyWith(
    _$ReportSummaryImpl value,
    $Res Function(_$ReportSummaryImpl) then,
  ) = __$$ReportSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'report_id') String reportId,
    @JsonKey(name: 'report_type') ReportType reportType,
    String title,
    String question,
    ReportStatus status,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'last_accessed') int lastAccessed,
  });
}

/// @nodoc
class __$$ReportSummaryImplCopyWithImpl<$Res>
    extends _$ReportSummaryCopyWithImpl<$Res, _$ReportSummaryImpl>
    implements _$$ReportSummaryImplCopyWith<$Res> {
  __$$ReportSummaryImplCopyWithImpl(
    _$ReportSummaryImpl _value,
    $Res Function(_$ReportSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportType = null,
    Object? title = null,
    Object? question = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastAccessed = null,
  }) {
    return _then(
      _$ReportSummaryImpl(
        reportId: null == reportId
            ? _value.reportId
            : reportId // ignore: cast_nullable_to_non_nullable
                  as String,
        reportType: null == reportType
            ? _value.reportType
            : reportType // ignore: cast_nullable_to_non_nullable
                  as ReportType,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as int,
        lastAccessed: null == lastAccessed
            ? _value.lastAccessed
            : lastAccessed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportSummaryImpl implements _ReportSummary {
  const _$ReportSummaryImpl({
    @JsonKey(name: 'report_id') required this.reportId,
    @JsonKey(name: 'report_type') required this.reportType,
    required this.title,
    required this.question,
    required this.status,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'last_accessed') required this.lastAccessed,
  });

  factory _$ReportSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'report_id')
  final String reportId;
  @override
  @JsonKey(name: 'report_type')
  final ReportType reportType;
  @override
  final String title;
  @override
  final String question;
  @override
  final ReportStatus status;
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;
  @override
  @JsonKey(name: 'last_accessed')
  final int lastAccessed;

  @override
  String toString() {
    return 'ReportSummary(reportId: $reportId, reportType: $reportType, title: $title, question: $question, status: $status, createdAt: $createdAt, lastAccessed: $lastAccessed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportSummaryImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastAccessed, lastAccessed) ||
                other.lastAccessed == lastAccessed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    reportId,
    reportType,
    title,
    question,
    status,
    createdAt,
    lastAccessed,
  );

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportSummaryImplCopyWith<_$ReportSummaryImpl> get copyWith =>
      __$$ReportSummaryImplCopyWithImpl<_$ReportSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportSummaryImplToJson(this);
  }
}

abstract class _ReportSummary implements ReportSummary {
  const factory _ReportSummary({
    @JsonKey(name: 'report_id') required final String reportId,
    @JsonKey(name: 'report_type') required final ReportType reportType,
    required final String title,
    required final String question,
    required final ReportStatus status,
    @JsonKey(name: 'created_at') required final int createdAt,
    @JsonKey(name: 'last_accessed') required final int lastAccessed,
  }) = _$ReportSummaryImpl;

  factory _ReportSummary.fromJson(Map<String, dynamic> json) =
      _$ReportSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'report_id')
  String get reportId;
  @override
  @JsonKey(name: 'report_type')
  ReportType get reportType;
  @override
  String get title;
  @override
  String get question;
  @override
  ReportStatus get status;
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;
  @override
  @JsonKey(name: 'last_accessed')
  int get lastAccessed;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportSummaryImplCopyWith<_$ReportSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
