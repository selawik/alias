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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GameSettingsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_MoveTimeChangedCopyWith<$Res> {
  factory _$$_MoveTimeChangedCopyWith(
          _$_MoveTimeChanged value, $Res Function(_$_MoveTimeChanged) then) =
      __$$_MoveTimeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CommandMoveMode moveTime});
}

/// @nodoc
class __$$_MoveTimeChangedCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$_MoveTimeChanged>
    implements _$$_MoveTimeChangedCopyWith<$Res> {
  __$$_MoveTimeChangedCopyWithImpl(
      _$_MoveTimeChanged _value, $Res Function(_$_MoveTimeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveTime = null,
  }) {
    return _then(_$_MoveTimeChanged(
      moveTime: null == moveTime
          ? _value.moveTime
          : moveTime // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
    ));
  }
}

/// @nodoc

class _$_MoveTimeChanged implements _MoveTimeChanged {
  const _$_MoveTimeChanged({required this.moveTime});

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
            other is _$_MoveTimeChanged &&
            (identical(other.moveTime, moveTime) ||
                other.moveTime == moveTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moveTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveTimeChangedCopyWith<_$_MoveTimeChanged> get copyWith =>
      __$$_MoveTimeChangedCopyWithImpl<_$_MoveTimeChanged>(this, _$identity);

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
      _$_MoveTimeChanged;

  CommandMoveMode get moveTime;
  @JsonKey(ignore: true)
  _$$_MoveTimeChangedCopyWith<_$_MoveTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastWordModeChangedCopyWith<$Res> {
  factory _$$_LastWordModeChangedCopyWith(_$_LastWordModeChanged value,
          $Res Function(_$_LastWordModeChanged) then) =
      __$$_LastWordModeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({BinarySelectorMode mode});
}

/// @nodoc
class __$$_LastWordModeChangedCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$_LastWordModeChanged>
    implements _$$_LastWordModeChangedCopyWith<$Res> {
  __$$_LastWordModeChangedCopyWithImpl(_$_LastWordModeChanged _value,
      $Res Function(_$_LastWordModeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_LastWordModeChanged(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
    ));
  }
}

/// @nodoc

class _$_LastWordModeChanged implements _LastWordModeChanged {
  const _$_LastWordModeChanged({required this.mode});

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
            other is _$_LastWordModeChanged &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastWordModeChangedCopyWith<_$_LastWordModeChanged> get copyWith =>
      __$$_LastWordModeChangedCopyWithImpl<_$_LastWordModeChanged>(
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
      _$_LastWordModeChanged;

  BinarySelectorMode get mode;
  @JsonKey(ignore: true)
  _$$_LastWordModeChangedCopyWith<_$_LastWordModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PenaltyModeChangedCopyWith<$Res> {
  factory _$$_PenaltyModeChangedCopyWith(_$_PenaltyModeChanged value,
          $Res Function(_$_PenaltyModeChanged) then) =
      __$$_PenaltyModeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({BinarySelectorMode mode});
}

/// @nodoc
class __$$_PenaltyModeChangedCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$_PenaltyModeChanged>
    implements _$$_PenaltyModeChangedCopyWith<$Res> {
  __$$_PenaltyModeChangedCopyWithImpl(
      _$_PenaltyModeChanged _value, $Res Function(_$_PenaltyModeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_PenaltyModeChanged(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
    ));
  }
}

/// @nodoc

class _$_PenaltyModeChanged implements _PenaltyModeChanged {
  const _$_PenaltyModeChanged({required this.mode});

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
            other is _$_PenaltyModeChanged &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PenaltyModeChangedCopyWith<_$_PenaltyModeChanged> get copyWith =>
      __$$_PenaltyModeChangedCopyWithImpl<_$_PenaltyModeChanged>(
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
      _$_PenaltyModeChanged;

  BinarySelectorMode get mode;
  @JsonKey(ignore: true)
  _$$_PenaltyModeChangedCopyWith<_$_PenaltyModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WordsToWinChangedCopyWith<$Res> {
  factory _$$_WordsToWinChangedCopyWith(_$_WordsToWinChanged value,
          $Res Function(_$_WordsToWinChanged) then) =
      __$$_WordsToWinChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({WordsToWin wordsToWin});
}

/// @nodoc
class __$$_WordsToWinChangedCopyWithImpl<$Res>
    extends _$GameSettingsEventCopyWithImpl<$Res, _$_WordsToWinChanged>
    implements _$$_WordsToWinChangedCopyWith<$Res> {
  __$$_WordsToWinChangedCopyWithImpl(
      _$_WordsToWinChanged _value, $Res Function(_$_WordsToWinChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsToWin = null,
  }) {
    return _then(_$_WordsToWinChanged(
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as WordsToWin,
    ));
  }
}

/// @nodoc

class _$_WordsToWinChanged implements _WordsToWinChanged {
  const _$_WordsToWinChanged({required this.wordsToWin});

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
            other is _$_WordsToWinChanged &&
            (identical(other.wordsToWin, wordsToWin) ||
                other.wordsToWin == wordsToWin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordsToWin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordsToWinChangedCopyWith<_$_WordsToWinChanged> get copyWith =>
      __$$_WordsToWinChangedCopyWithImpl<_$_WordsToWinChanged>(
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
      _$_WordsToWinChanged;

  WordsToWin get wordsToWin;
  @JsonKey(ignore: true)
  _$$_WordsToWinChangedCopyWith<_$_WordsToWinChanged> get copyWith =>
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
abstract class _$$_ReadyCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommandMoveMode time,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode,
      WordsToWin wordsToWin});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$_Ready>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
    Object? wordsToWin = null,
  }) {
    return _then(_$_Ready(
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

class _$_Ready implements _Ready {
  const _$_Ready(
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
            other is _$_Ready &&
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
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

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
      required final WordsToWin wordsToWin}) = _$_Ready;

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
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}
