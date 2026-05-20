// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReportState {
  List<ReportSummary> get reports => throw _privateConstructorUsedError;
  String? get currentReportId => throw _privateConstructorUsedError;
  ReportStatusResponse? get currentReportDetail =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
    ReportState value,
    $Res Function(ReportState) then,
  ) = _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call({
    List<ReportSummary> reports,
    String? currentReportId,
    ReportStatusResponse? currentReportDetail,
    bool isLoading,
    String? error,
  });

  $ReportStatusResponseCopyWith<$Res>? get currentReportDetail;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? currentReportId = freezed,
    Object? currentReportDetail = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            reports: null == reports
                ? _value.reports
                : reports // ignore: cast_nullable_to_non_nullable
                      as List<ReportSummary>,
            currentReportId: freezed == currentReportId
                ? _value.currentReportId
                : currentReportId // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentReportDetail: freezed == currentReportDetail
                ? _value.currentReportDetail
                : currentReportDetail // ignore: cast_nullable_to_non_nullable
                      as ReportStatusResponse?,
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

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportStatusResponseCopyWith<$Res>? get currentReportDetail {
    if (_value.currentReportDetail == null) {
      return null;
    }

    return $ReportStatusResponseCopyWith<$Res>(_value.currentReportDetail!, (
      value,
    ) {
      return _then(_value.copyWith(currentReportDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportStateImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$ReportStateImplCopyWith(
    _$ReportStateImpl value,
    $Res Function(_$ReportStateImpl) then,
  ) = __$$ReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ReportSummary> reports,
    String? currentReportId,
    ReportStatusResponse? currentReportDetail,
    bool isLoading,
    String? error,
  });

  @override
  $ReportStatusResponseCopyWith<$Res>? get currentReportDetail;
}

/// @nodoc
class __$$ReportStateImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportStateImpl>
    implements _$$ReportStateImplCopyWith<$Res> {
  __$$ReportStateImplCopyWithImpl(
    _$ReportStateImpl _value,
    $Res Function(_$ReportStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? currentReportId = freezed,
    Object? currentReportDetail = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ReportStateImpl(
        reports: null == reports
            ? _value._reports
            : reports // ignore: cast_nullable_to_non_nullable
                  as List<ReportSummary>,
        currentReportId: freezed == currentReportId
            ? _value.currentReportId
            : currentReportId // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentReportDetail: freezed == currentReportDetail
            ? _value.currentReportDetail
            : currentReportDetail // ignore: cast_nullable_to_non_nullable
                  as ReportStatusResponse?,
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

class _$ReportStateImpl implements _ReportState {
  const _$ReportStateImpl({
    final List<ReportSummary> reports = const [],
    this.currentReportId,
    this.currentReportDetail,
    this.isLoading = false,
    this.error,
  }) : _reports = reports;

  final List<ReportSummary> _reports;
  @override
  @JsonKey()
  List<ReportSummary> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  final String? currentReportId;
  @override
  final ReportStatusResponse? currentReportDetail;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ReportState(reports: $reports, currentReportId: $currentReportId, currentReportDetail: $currentReportDetail, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStateImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.currentReportId, currentReportId) ||
                other.currentReportId == currentReportId) &&
            (identical(other.currentReportDetail, currentReportDetail) ||
                other.currentReportDetail == currentReportDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_reports),
    currentReportId,
    currentReportDetail,
    isLoading,
    error,
  );

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      __$$ReportStateImplCopyWithImpl<_$ReportStateImpl>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState({
    final List<ReportSummary> reports,
    final String? currentReportId,
    final ReportStatusResponse? currentReportDetail,
    final bool isLoading,
    final String? error,
  }) = _$ReportStateImpl;

  @override
  List<ReportSummary> get reports;
  @override
  String? get currentReportId;
  @override
  ReportStatusResponse? get currentReportDetail;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
