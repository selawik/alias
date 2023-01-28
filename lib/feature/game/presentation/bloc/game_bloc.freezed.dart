// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

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
    extends _$GameEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GameEvent.started()';
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
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
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
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PauseGameCopyWith<$Res> {
  factory _$$_PauseGameCopyWith(
          _$_PauseGame value, $Res Function(_$_PauseGame) then) =
      __$$_PauseGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_PauseGame>
    implements _$$_PauseGameCopyWith<$Res> {
  __$$_PauseGameCopyWithImpl(
      _$_PauseGame _value, $Res Function(_$_PauseGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PauseGame implements _PauseGame {
  const _$_PauseGame();

  @override
  String toString() {
    return 'GameEvent.pauseGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PauseGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
  }) {
    return pauseGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
  }) {
    return pauseGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    required TResult orElse(),
  }) {
    if (pauseGame != null) {
      return pauseGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
  }) {
    return pauseGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
  }) {
    return pauseGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    required TResult orElse(),
  }) {
    if (pauseGame != null) {
      return pauseGame(this);
    }
    return orElse();
  }
}

abstract class _PauseGame implements GameEvent {
  const factory _PauseGame() = _$_PauseGame;
}

/// @nodoc
abstract class _$$_ResumeGameCopyWith<$Res> {
  factory _$$_ResumeGameCopyWith(
          _$_ResumeGame value, $Res Function(_$_ResumeGame) then) =
      __$$_ResumeGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumeGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_ResumeGame>
    implements _$$_ResumeGameCopyWith<$Res> {
  __$$_ResumeGameCopyWithImpl(
      _$_ResumeGame _value, $Res Function(_$_ResumeGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResumeGame implements _ResumeGame {
  const _$_ResumeGame();

  @override
  String toString() {
    return 'GameEvent.resumeGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResumeGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
  }) {
    return resumeGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
  }) {
    return resumeGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    required TResult orElse(),
  }) {
    if (resumeGame != null) {
      return resumeGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
  }) {
    return resumeGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
  }) {
    return resumeGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    required TResult orElse(),
  }) {
    if (resumeGame != null) {
      return resumeGame(this);
    }
    return orElse();
  }
}

abstract class _ResumeGame implements GameEvent {
  const factory _ResumeGame() = _$_ResumeGame;
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForAnswer,
    required TResult Function() gamePaused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForAnswer,
    TResult? Function()? gamePaused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForAnswer,
    TResult Function()? gamePaused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

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
    extends _$GameStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GameState.initial()';
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
    required TResult Function() waitingForAnswer,
    required TResult Function() gamePaused,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForAnswer,
    TResult? Function()? gamePaused,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForAnswer,
    TResult Function()? gamePaused,
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
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_WaitingForAnswerCopyWith<$Res> {
  factory _$$_WaitingForAnswerCopyWith(
          _$_WaitingForAnswer value, $Res Function(_$_WaitingForAnswer) then) =
      __$$_WaitingForAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingForAnswerCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_WaitingForAnswer>
    implements _$$_WaitingForAnswerCopyWith<$Res> {
  __$$_WaitingForAnswerCopyWithImpl(
      _$_WaitingForAnswer _value, $Res Function(_$_WaitingForAnswer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WaitingForAnswer implements _WaitingForAnswer {
  const _$_WaitingForAnswer();

  @override
  String toString() {
    return 'GameState.waitingForAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WaitingForAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForAnswer,
    required TResult Function() gamePaused,
  }) {
    return waitingForAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForAnswer,
    TResult? Function()? gamePaused,
  }) {
    return waitingForAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForAnswer,
    TResult Function()? gamePaused,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
  }) {
    return waitingForAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
  }) {
    return waitingForAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(this);
    }
    return orElse();
  }
}

abstract class _WaitingForAnswer implements GameState {
  const factory _WaitingForAnswer() = _$_WaitingForAnswer;
}

/// @nodoc
abstract class _$$_GamePausedCopyWith<$Res> {
  factory _$$_GamePausedCopyWith(
          _$_GamePaused value, $Res Function(_$_GamePaused) then) =
      __$$_GamePausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GamePausedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_GamePaused>
    implements _$$_GamePausedCopyWith<$Res> {
  __$$_GamePausedCopyWithImpl(
      _$_GamePaused _value, $Res Function(_$_GamePaused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GamePaused implements _GamePaused {
  const _$_GamePaused();

  @override
  String toString() {
    return 'GameState.gamePaused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GamePaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForAnswer,
    required TResult Function() gamePaused,
  }) {
    return gamePaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForAnswer,
    TResult? Function()? gamePaused,
  }) {
    return gamePaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForAnswer,
    TResult Function()? gamePaused,
    required TResult orElse(),
  }) {
    if (gamePaused != null) {
      return gamePaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
  }) {
    return gamePaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
  }) {
    return gamePaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    required TResult orElse(),
  }) {
    if (gamePaused != null) {
      return gamePaused(this);
    }
    return orElse();
  }
}

abstract class _GamePaused implements GameState {
  const factory _GamePaused() = _$_GamePaused;
}
