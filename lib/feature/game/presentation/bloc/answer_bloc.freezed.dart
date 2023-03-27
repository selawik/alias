// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playCountAnimation,
    required TResult Function() playSkipAnimation,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playCountAnimation,
    TResult? Function()? playSkipAnimation,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playCountAnimation,
    TResult Function()? playSkipAnimation,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayCountAnimation value) playCountAnimation,
    required TResult Function(_PlaySkipAnimation value) playSkipAnimation,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayCountAnimation value)? playCountAnimation,
    TResult? Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayCountAnimation value)? playCountAnimation,
    TResult Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEventCopyWith<$Res> {
  factory $AnswerEventCopyWith(
          AnswerEvent value, $Res Function(AnswerEvent) then) =
      _$AnswerEventCopyWithImpl<$Res, AnswerEvent>;
}

/// @nodoc
class _$AnswerEventCopyWithImpl<$Res, $Val extends AnswerEvent>
    implements $AnswerEventCopyWith<$Res> {
  _$AnswerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlayCountAnimationCopyWith<$Res> {
  factory _$$_PlayCountAnimationCopyWith(_$_PlayCountAnimation value,
          $Res Function(_$_PlayCountAnimation) then) =
      __$$_PlayCountAnimationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayCountAnimationCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$_PlayCountAnimation>
    implements _$$_PlayCountAnimationCopyWith<$Res> {
  __$$_PlayCountAnimationCopyWithImpl(
      _$_PlayCountAnimation _value, $Res Function(_$_PlayCountAnimation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayCountAnimation implements _PlayCountAnimation {
  const _$_PlayCountAnimation();

  @override
  String toString() {
    return 'AnswerEvent.playCountAnimation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayCountAnimation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playCountAnimation,
    required TResult Function() playSkipAnimation,
    required TResult Function() reset,
  }) {
    return playCountAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playCountAnimation,
    TResult? Function()? playSkipAnimation,
    TResult? Function()? reset,
  }) {
    return playCountAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playCountAnimation,
    TResult Function()? playSkipAnimation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (playCountAnimation != null) {
      return playCountAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayCountAnimation value) playCountAnimation,
    required TResult Function(_PlaySkipAnimation value) playSkipAnimation,
    required TResult Function(_Reset value) reset,
  }) {
    return playCountAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayCountAnimation value)? playCountAnimation,
    TResult? Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult? Function(_Reset value)? reset,
  }) {
    return playCountAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayCountAnimation value)? playCountAnimation,
    TResult Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (playCountAnimation != null) {
      return playCountAnimation(this);
    }
    return orElse();
  }
}

abstract class _PlayCountAnimation implements AnswerEvent {
  const factory _PlayCountAnimation() = _$_PlayCountAnimation;
}

/// @nodoc
abstract class _$$_PlaySkipAnimationCopyWith<$Res> {
  factory _$$_PlaySkipAnimationCopyWith(_$_PlaySkipAnimation value,
          $Res Function(_$_PlaySkipAnimation) then) =
      __$$_PlaySkipAnimationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlaySkipAnimationCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$_PlaySkipAnimation>
    implements _$$_PlaySkipAnimationCopyWith<$Res> {
  __$$_PlaySkipAnimationCopyWithImpl(
      _$_PlaySkipAnimation _value, $Res Function(_$_PlaySkipAnimation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlaySkipAnimation implements _PlaySkipAnimation {
  const _$_PlaySkipAnimation();

  @override
  String toString() {
    return 'AnswerEvent.playSkipAnimation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlaySkipAnimation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playCountAnimation,
    required TResult Function() playSkipAnimation,
    required TResult Function() reset,
  }) {
    return playSkipAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playCountAnimation,
    TResult? Function()? playSkipAnimation,
    TResult? Function()? reset,
  }) {
    return playSkipAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playCountAnimation,
    TResult Function()? playSkipAnimation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (playSkipAnimation != null) {
      return playSkipAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayCountAnimation value) playCountAnimation,
    required TResult Function(_PlaySkipAnimation value) playSkipAnimation,
    required TResult Function(_Reset value) reset,
  }) {
    return playSkipAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayCountAnimation value)? playCountAnimation,
    TResult? Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult? Function(_Reset value)? reset,
  }) {
    return playSkipAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayCountAnimation value)? playCountAnimation,
    TResult Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (playSkipAnimation != null) {
      return playSkipAnimation(this);
    }
    return orElse();
  }
}

abstract class _PlaySkipAnimation implements AnswerEvent {
  const factory _PlaySkipAnimation() = _$_PlaySkipAnimation;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'AnswerEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playCountAnimation,
    required TResult Function() playSkipAnimation,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playCountAnimation,
    TResult? Function()? playSkipAnimation,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playCountAnimation,
    TResult Function()? playSkipAnimation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayCountAnimation value) playCountAnimation,
    required TResult Function(_PlaySkipAnimation value) playSkipAnimation,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayCountAnimation value)? playCountAnimation,
    TResult? Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayCountAnimation value)? playCountAnimation,
    TResult Function(_PlaySkipAnimation value)? playSkipAnimation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AnswerEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
mixin _$AnswerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skipping,
    required TResult Function() counting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skipping,
    TResult? Function()? counting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skipping,
    TResult Function()? counting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Skipping value) skipping,
    required TResult Function(_Counting value) counting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Skipping value)? skipping,
    TResult? Function(_Counting value)? counting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Skipping value)? skipping,
    TResult Function(_Counting value)? counting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerStateCopyWith<$Res> {
  factory $AnswerStateCopyWith(
          AnswerState value, $Res Function(AnswerState) then) =
      _$AnswerStateCopyWithImpl<$Res, AnswerState>;
}

/// @nodoc
class _$AnswerStateCopyWithImpl<$Res, $Val extends AnswerState>
    implements $AnswerStateCopyWith<$Res> {
  _$AnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AnswerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skipping,
    required TResult Function() counting,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skipping,
    TResult? Function()? counting,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skipping,
    TResult Function()? counting,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Skipping value) skipping,
    required TResult Function(_Counting value) counting,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Skipping value)? skipping,
    TResult? Function(_Counting value)? counting,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Skipping value)? skipping,
    TResult Function(_Counting value)? counting,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnswerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SkippingCopyWith<$Res> {
  factory _$$_SkippingCopyWith(
          _$_Skipping value, $Res Function(_$_Skipping) then) =
      __$$_SkippingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SkippingCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$_Skipping>
    implements _$$_SkippingCopyWith<$Res> {
  __$$_SkippingCopyWithImpl(
      _$_Skipping _value, $Res Function(_$_Skipping) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Skipping implements _Skipping {
  const _$_Skipping();

  @override
  String toString() {
    return 'AnswerState.skipping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Skipping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skipping,
    required TResult Function() counting,
  }) {
    return skipping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skipping,
    TResult? Function()? counting,
  }) {
    return skipping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skipping,
    TResult Function()? counting,
    required TResult orElse(),
  }) {
    if (skipping != null) {
      return skipping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Skipping value) skipping,
    required TResult Function(_Counting value) counting,
  }) {
    return skipping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Skipping value)? skipping,
    TResult? Function(_Counting value)? counting,
  }) {
    return skipping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Skipping value)? skipping,
    TResult Function(_Counting value)? counting,
    required TResult orElse(),
  }) {
    if (skipping != null) {
      return skipping(this);
    }
    return orElse();
  }
}

abstract class _Skipping implements AnswerState {
  const factory _Skipping() = _$_Skipping;
}

/// @nodoc
abstract class _$$_CountingCopyWith<$Res> {
  factory _$$_CountingCopyWith(
          _$_Counting value, $Res Function(_$_Counting) then) =
      __$$_CountingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountingCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$_Counting>
    implements _$$_CountingCopyWith<$Res> {
  __$$_CountingCopyWithImpl(
      _$_Counting _value, $Res Function(_$_Counting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Counting implements _Counting {
  const _$_Counting();

  @override
  String toString() {
    return 'AnswerState.counting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Counting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skipping,
    required TResult Function() counting,
  }) {
    return counting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skipping,
    TResult? Function()? counting,
  }) {
    return counting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skipping,
    TResult Function()? counting,
    required TResult orElse(),
  }) {
    if (counting != null) {
      return counting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Skipping value) skipping,
    required TResult Function(_Counting value) counting,
  }) {
    return counting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Skipping value)? skipping,
    TResult? Function(_Counting value)? counting,
  }) {
    return counting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Skipping value)? skipping,
    TResult Function(_Counting value)? counting,
    required TResult orElse(),
  }) {
    if (counting != null) {
      return counting(this);
    }
    return orElse();
  }
}

abstract class _Counting implements AnswerState {
  const factory _Counting() = _$_Counting;
}
