// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stt_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$STTState {
  // 录音状态
  RecorderState get state => throw _privateConstructorUsedError; // 转写结果文本
  String get text => throw _privateConstructorUsedError; // 错误信息
  String? get error => throw _privateConstructorUsedError; // 录音时长（毫秒）
  int get duration => throw _privateConstructorUsedError;

  /// Create a copy of STTState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $STTStateCopyWith<STTState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $STTStateCopyWith<$Res> {
  factory $STTStateCopyWith(STTState value, $Res Function(STTState) then) =
      _$STTStateCopyWithImpl<$Res, STTState>;
  @useResult
  $Res call({RecorderState state, String text, String? error, int duration});
}

/// @nodoc
class _$STTStateCopyWithImpl<$Res, $Val extends STTState>
    implements $STTStateCopyWith<$Res> {
  _$STTStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of STTState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? text = null,
    Object? error = freezed,
    Object? duration = null,
  }) {
    return _then(
      _value.copyWith(
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as RecorderState,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$STTStateImplCopyWith<$Res>
    implements $STTStateCopyWith<$Res> {
  factory _$$STTStateImplCopyWith(
    _$STTStateImpl value,
    $Res Function(_$STTStateImpl) then,
  ) = __$$STTStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecorderState state, String text, String? error, int duration});
}

/// @nodoc
class __$$STTStateImplCopyWithImpl<$Res>
    extends _$STTStateCopyWithImpl<$Res, _$STTStateImpl>
    implements _$$STTStateImplCopyWith<$Res> {
  __$$STTStateImplCopyWithImpl(
    _$STTStateImpl _value,
    $Res Function(_$STTStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of STTState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? text = null,
    Object? error = freezed,
    Object? duration = null,
  }) {
    return _then(
      _$STTStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RecorderState,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$STTStateImpl implements _STTState {
  const _$STTStateImpl({
    this.state = RecorderState.idle,
    this.text = '',
    this.error,
    this.duration = 0,
  });

  // 录音状态
  @override
  @JsonKey()
  final RecorderState state;
  // 转写结果文本
  @override
  @JsonKey()
  final String text;
  // 错误信息
  @override
  final String? error;
  // 录音时长（毫秒）
  @override
  @JsonKey()
  final int duration;

  @override
  String toString() {
    return 'STTState(state: $state, text: $text, error: $error, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$STTStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, text, error, duration);

  /// Create a copy of STTState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$STTStateImplCopyWith<_$STTStateImpl> get copyWith =>
      __$$STTStateImplCopyWithImpl<_$STTStateImpl>(this, _$identity);
}

abstract class _STTState implements STTState {
  const factory _STTState({
    final RecorderState state,
    final String text,
    final String? error,
    final int duration,
  }) = _$STTStateImpl;

  // 录音状态
  @override
  RecorderState get state; // 转写结果文本
  @override
  String get text; // 错误信息
  @override
  String? get error; // 录音时长（毫秒）
  @override
  int get duration;

  /// Create a copy of STTState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$STTStateImplCopyWith<_$STTStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
