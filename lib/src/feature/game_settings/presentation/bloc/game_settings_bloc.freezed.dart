// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSettingsEventCopyWith<$Res> {
  factory $GameSettingsEventCopyWith(
          GameSettingsEvent value, $Res Function(GameSettingsEvent) then) =
      _$GameSettingsEventCopyWithImpl<$Res, GameSettingsEvent>;
}

/// @nodoc
class _$GameSettingsEventCopyWithImpl<$Res, $Val extends GameSettingsEvent>
    implements $GameSettingsEventCopyWith<$Res> {
  _$GameSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GameSettingsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameSettingsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MoveTimeChangedImplCopyWith<$Res> {
  factory _$$MoveTimeChangedImplCopyWith(_$MoveTimeChangedImpl value,
          $Res Function(_$MoveTimeChangedImpl) then) =
      __$$MoveTimeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommandMoveMode moveTime});
}

/// @nodoc
class __$$MoveTimeChangedImplCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$MoveTimeChangedImpl>
    implements _$$MoveTimeChangedImplCopyWith<$Res> {
  __$$MoveTimeChangedImplCopyWithImpl(
      _$MoveTimeChangedImpl _value, $Res Function(_$MoveTimeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveTime = null,
  }) {
    return _then(_$MoveTimeChangedImpl(
      moveTime: null == moveTime
          ? _value.moveTime
          : moveTime // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
    ));
  }
}

/// @nodoc

class _$MoveTimeChangedImpl implements _MoveTimeChanged {
  const _$MoveTimeChangedImpl({required this.moveTime});

  @override
  final CommandMoveMode moveTime;

  @override
  String toString() {
    return 'GameSettingsEvent.moveTimeChanged(moveTime: $moveTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveTimeChangedImpl &&
            (identical(other.moveTime, moveTime) ||
                other.moveTime == moveTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moveTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveTimeChangedImplCopyWith<_$MoveTimeChangedImpl> get copyWith =>
      __$$MoveTimeChangedImplCopyWithImpl<_$MoveTimeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) {
    return moveTimeChanged(moveTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) {
    return moveTimeChanged?.call(moveTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (moveTimeChanged != null) {
      return moveTimeChanged(moveTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) {
    return moveTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) {
    return moveTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (moveTimeChanged != null) {
      return moveTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _MoveTimeChanged implements GameSettingsEvent {
  const factory _MoveTimeChanged({required final CommandMoveMode moveTime}) =
      _$MoveTimeChangedImpl;

  CommandMoveMode get moveTime;
  @JsonKey(ignore: true)
  _$$MoveTimeChangedImplCopyWith<_$MoveTimeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastWordModeChangedImplCopyWith<$Res> {
  factory _$$LastWordModeChangedImplCopyWith(_$LastWordModeChangedImpl value,
          $Res Function(_$LastWordModeChangedImpl) then) =
      __$$LastWordModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BinarySelectorMode mode});
}

/// @nodoc
class __$$LastWordModeChangedImplCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$LastWordModeChangedImpl>
    implements _$$LastWordModeChangedImplCopyWith<$Res> {
  __$$LastWordModeChangedImplCopyWithImpl(_$LastWordModeChangedImpl _value,
      $Res Function(_$LastWordModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$LastWordModeChangedImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
    ));
  }
}

/// @nodoc

class _$LastWordModeChangedImpl implements _LastWordModeChanged {
  const _$LastWordModeChangedImpl({required this.mode});

  @override
  final BinarySelectorMode mode;

  @override
  String toString() {
    return 'GameSettingsEvent.lastWordModeChanged(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastWordModeChangedImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastWordModeChangedImplCopyWith<_$LastWordModeChangedImpl> get copyWith =>
      __$$LastWordModeChangedImplCopyWithImpl<_$LastWordModeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) {
    return lastWordModeChanged(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) {
    return lastWordModeChanged?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (lastWordModeChanged != null) {
      return lastWordModeChanged(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) {
    return lastWordModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) {
    return lastWordModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (lastWordModeChanged != null) {
      return lastWordModeChanged(this);
    }
    return orElse();
  }
}

abstract class _LastWordModeChanged implements GameSettingsEvent {
  const factory _LastWordModeChanged({required final BinarySelectorMode mode}) =
      _$LastWordModeChangedImpl;

  BinarySelectorMode get mode;
  @JsonKey(ignore: true)
  _$$LastWordModeChangedImplCopyWith<_$LastWordModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PenaltyModeChangedImplCopyWith<$Res> {
  factory _$$PenaltyModeChangedImplCopyWith(_$PenaltyModeChangedImpl value,
          $Res Function(_$PenaltyModeChangedImpl) then) =
      __$$PenaltyModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BinarySelectorMode mode});
}

/// @nodoc
class __$$PenaltyModeChangedImplCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$PenaltyModeChangedImpl>
    implements _$$PenaltyModeChangedImplCopyWith<$Res> {
  __$$PenaltyModeChangedImplCopyWithImpl(_$PenaltyModeChangedImpl _value,
      $Res Function(_$PenaltyModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$PenaltyModeChangedImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
    ));
  }
}

/// @nodoc

class _$PenaltyModeChangedImpl implements _PenaltyModeChanged {
  const _$PenaltyModeChangedImpl({required this.mode});

  @override
  final BinarySelectorMode mode;

  @override
  String toString() {
    return 'GameSettingsEvent.penaltyModeChanged(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenaltyModeChangedImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PenaltyModeChangedImplCopyWith<_$PenaltyModeChangedImpl> get copyWith =>
      __$$PenaltyModeChangedImplCopyWithImpl<_$PenaltyModeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) {
    return penaltyModeChanged(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) {
    return penaltyModeChanged?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (penaltyModeChanged != null) {
      return penaltyModeChanged(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) {
    return penaltyModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) {
    return penaltyModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (penaltyModeChanged != null) {
      return penaltyModeChanged(this);
    }
    return orElse();
  }
}

abstract class _PenaltyModeChanged implements GameSettingsEvent {
  const factory _PenaltyModeChanged({required final BinarySelectorMode mode}) =
      _$PenaltyModeChangedImpl;

  BinarySelectorMode get mode;
  @JsonKey(ignore: true)
  _$$PenaltyModeChangedImplCopyWith<_$PenaltyModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WordsToWinChangedImplCopyWith<$Res> {
  factory _$$WordsToWinChangedImplCopyWith(_$WordsToWinChangedImpl value,
          $Res Function(_$WordsToWinChangedImpl) then) =
      __$$WordsToWinChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordsToWin wordsToWin});
}

/// @nodoc
class __$$WordsToWinChangedImplCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$WordsToWinChangedImpl>
    implements _$$WordsToWinChangedImplCopyWith<$Res> {
  __$$WordsToWinChangedImplCopyWithImpl(_$WordsToWinChangedImpl _value,
      $Res Function(_$WordsToWinChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsToWin = null,
  }) {
    return _then(_$WordsToWinChangedImpl(
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as WordsToWin,
    ));
  }
}

/// @nodoc

class _$WordsToWinChangedImpl implements _WordsToWinChanged {
  const _$WordsToWinChangedImpl({required this.wordsToWin});

  @override
  final WordsToWin wordsToWin;

  @override
  String toString() {
    return 'GameSettingsEvent.wordsToWinChanged(wordsToWin: $wordsToWin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsToWinChangedImpl &&
            (identical(other.wordsToWin, wordsToWin) ||
                other.wordsToWin == wordsToWin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordsToWin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsToWinChangedImplCopyWith<_$WordsToWinChangedImpl> get copyWith =>
      __$$WordsToWinChangedImplCopyWithImpl<_$WordsToWinChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CommandMoveMode moveTime) moveTimeChanged,
    required TResult Function(BinarySelectorMode mode) lastWordModeChanged,
    required TResult Function(BinarySelectorMode mode) penaltyModeChanged,
    required TResult Function(WordsToWin wordsToWin) wordsToWinChanged,
  }) {
    return wordsToWinChanged(wordsToWin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult? Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult? Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult? Function(WordsToWin wordsToWin)? wordsToWinChanged,
  }) {
    return wordsToWinChanged?.call(wordsToWin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CommandMoveMode moveTime)? moveTimeChanged,
    TResult Function(BinarySelectorMode mode)? lastWordModeChanged,
    TResult Function(BinarySelectorMode mode)? penaltyModeChanged,
    TResult Function(WordsToWin wordsToWin)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (wordsToWinChanged != null) {
      return wordsToWinChanged(wordsToWin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MoveTimeChanged value) moveTimeChanged,
    required TResult Function(_LastWordModeChanged value) lastWordModeChanged,
    required TResult Function(_PenaltyModeChanged value) penaltyModeChanged,
    required TResult Function(_WordsToWinChanged value) wordsToWinChanged,
  }) {
    return wordsToWinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult? Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult? Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult? Function(_WordsToWinChanged value)? wordsToWinChanged,
  }) {
    return wordsToWinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MoveTimeChanged value)? moveTimeChanged,
    TResult Function(_LastWordModeChanged value)? lastWordModeChanged,
    TResult Function(_PenaltyModeChanged value)? penaltyModeChanged,
    TResult Function(_WordsToWinChanged value)? wordsToWinChanged,
    required TResult orElse(),
  }) {
    if (wordsToWinChanged != null) {
      return wordsToWinChanged(this);
    }
    return orElse();
  }
}

abstract class _WordsToWinChanged implements GameSettingsEvent {
  const factory _WordsToWinChanged({required final WordsToWin wordsToWin}) =
      _$WordsToWinChangedImpl;

  WordsToWin get wordsToWin;
  @JsonKey(ignore: true)
  _$$WordsToWinChangedImplCopyWith<_$WordsToWinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSettingsState {
  CommandMoveMode get time => throw _privateConstructorUsedError;
  BinarySelectorMode get lastWordMode => throw _privateConstructorUsedError;
  BinarySelectorMode get penaltyMode => throw _privateConstructorUsedError;
  WordsToWin get wordsToWin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CommandMoveMode time,
            BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode,
            WordsToWin wordsToWin)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommandMoveMode time, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode, WordsToWin wordsToWin)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommandMoveMode time, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode, WordsToWin wordsToWin)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSettingsStateCopyWith<GameSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSettingsStateCopyWith<$Res> {
  factory $GameSettingsStateCopyWith(
          GameSettingsState value, $Res Function(GameSettingsState) then) =
      _$GameSettingsStateCopyWithImpl<$Res, GameSettingsState>;
  @useResult
  $Res call(
      {CommandMoveMode time,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode,
      WordsToWin wordsToWin});
}

/// @nodoc
class _$GameSettingsStateCopyWithImpl<$Res, $Val extends GameSettingsState>
    implements $GameSettingsStateCopyWith<$Res> {
  _$GameSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
    Object? wordsToWin = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
      lastWordMode: null == lastWordMode
          ? _value.lastWordMode
          : lastWordMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      penaltyMode: null == penaltyMode
          ? _value.penaltyMode
          : penaltyMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as WordsToWin,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommandMoveMode time,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode,
      WordsToWin wordsToWin});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
    Object? wordsToWin = null,
  }) {
    return _then(_$ReadyImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
      lastWordMode: null == lastWordMode
          ? _value.lastWordMode
          : lastWordMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      penaltyMode: null == penaltyMode
          ? _value.penaltyMode
          : penaltyMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as WordsToWin,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {required this.time,
      required this.lastWordMode,
      required this.penaltyMode,
      required this.wordsToWin});

  @override
  final CommandMoveMode time;
  @override
  final BinarySelectorMode lastWordMode;
  @override
  final BinarySelectorMode penaltyMode;
  @override
  final WordsToWin wordsToWin;

  @override
  String toString() {
    return 'GameSettingsState.ready(time: $time, lastWordMode: $lastWordMode, penaltyMode: $penaltyMode, wordsToWin: $wordsToWin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.lastWordMode, lastWordMode) ||
                other.lastWordMode == lastWordMode) &&
            (identical(other.penaltyMode, penaltyMode) ||
                other.penaltyMode == penaltyMode) &&
            (identical(other.wordsToWin, wordsToWin) ||
                other.wordsToWin == wordsToWin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, time, lastWordMode, penaltyMode, wordsToWin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CommandMoveMode time,
            BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode,
            WordsToWin wordsToWin)
        ready,
  }) {
    return ready(time, lastWordMode, penaltyMode, wordsToWin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommandMoveMode time, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode, WordsToWin wordsToWin)?
        ready,
  }) {
    return ready?.call(time, lastWordMode, penaltyMode, wordsToWin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommandMoveMode time, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode, WordsToWin wordsToWin)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(time, lastWordMode, penaltyMode, wordsToWin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements GameSettingsState {
  const factory _Ready(
      {required final CommandMoveMode time,
      required final BinarySelectorMode lastWordMode,
      required final BinarySelectorMode penaltyMode,
      required final WordsToWin wordsToWin}) = _$ReadyImpl;

  @override
  CommandMoveMode get time;
  @override
  BinarySelectorMode get lastWordMode;
  @override
  BinarySelectorMode get penaltyMode;
  @override
  WordsToWin get wordsToWin;
  @override
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
