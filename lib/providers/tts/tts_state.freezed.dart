// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TTSState {
  String? get activeMessageId => throw _privateConstructorUsedError;
  TTSPlaybackStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TTSState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TTSStateCopyWith<TTSState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TTSStateCopyWith<$Res> {
  factory $TTSStateCopyWith(TTSState value, $Res Function(TTSState) then) =
      _$TTSStateCopyWithImpl<$Res, TTSState>;
  @useResult
  $Res call({String? activeMessageId, TTSPlaybackStatus status, String? error});
}

/// @nodoc
class _$TTSStateCopyWithImpl<$Res, $Val extends TTSState>
    implements $TTSStateCopyWith<$Res> {
  _$TTSStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TTSState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeMessageId = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            activeMessageId: freezed == activeMessageId
                ? _value.activeMessageId
                : activeMessageId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TTSPlaybackStatus,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TTSStateImplCopyWith<$Res>
    implements $TTSStateCopyWith<$Res> {
  factory _$$TTSStateImplCopyWith(
    _$TTSStateImpl value,
    $Res Function(_$TTSStateImpl) then,
  ) = __$$TTSStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? activeMessageId, TTSPlaybackStatus status, String? error});
}

/// @nodoc
class __$$TTSStateImplCopyWithImpl<$Res>
    extends _$TTSStateCopyWithImpl<$Res, _$TTSStateImpl>
    implements _$$TTSStateImplCopyWith<$Res> {
  __$$TTSStateImplCopyWithImpl(
    _$TTSStateImpl _value,
    $Res Function(_$TTSStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TTSState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeMessageId = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(
      _$TTSStateImpl(
        activeMessageId: freezed == activeMessageId
            ? _value.activeMessageId
            : activeMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TTSPlaybackStatus,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TTSStateImpl implements _TTSState {
  const _$TTSStateImpl({
    this.activeMessageId,
    this.status = TTSPlaybackStatus.idle,
    this.error,
  });

  @override
  final String? activeMessageId;
  @override
  @JsonKey()
  final TTSPlaybackStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'TTSState(activeMessageId: $activeMessageId, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TTSStateImpl &&
            (identical(other.activeMessageId, activeMessageId) ||
                other.activeMessageId == activeMessageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeMessageId, status, error);

  /// Create a copy of TTSState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TTSStateImplCopyWith<_$TTSStateImpl> get copyWith =>
      __$$TTSStateImplCopyWithImpl<_$TTSStateImpl>(this, _$identity);
}

abstract class _TTSState implements TTSState {
  const factory _TTSState({
    final String? activeMessageId,
    final TTSPlaybackStatus status,
    final String? error,
  }) = _$TTSStateImpl;

  @override
  String? get activeMessageId;
  @override
  TTSPlaybackStatus get status;
  @override
  String? get error;

  /// Create a copy of TTSState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TTSStateImplCopyWith<_$TTSStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
