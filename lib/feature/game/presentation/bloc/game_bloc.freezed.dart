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
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({GameSettings gameSettings});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_$_Initial(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.gameSettings});

  @override
  final GameSettings gameSettings;

  @override
  String toString() {
    return 'GameEvent.initial(gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return initial(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return initial?.call(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameEvent {
  const factory _Initial({required final GameSettings gameSettings}) =
      _$_Initial;

  GameSettings get gameSettings;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartGameCopyWith<$Res> {
  factory _$$_StartGameCopyWith(
          _$_StartGame value, $Res Function(_$_StartGame) then) =
      __$$_StartGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_StartGame>
    implements _$$_StartGameCopyWith<$Res> {
  __$$_StartGameCopyWithImpl(
      _$_StartGame _value, $Res Function(_$_StartGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartGame implements _StartGame {
  const _$_StartGame();

  @override
  String toString() {
    return 'GameEvent.startGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return startGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return startGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class _StartGame implements GameEvent {
  const factory _StartGame() = _$_StartGame;
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
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return pauseGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return pauseGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return pauseGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return pauseGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
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
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return resumeGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return resumeGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return resumeGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return resumeGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
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
abstract class _$$_TimeIsLeftCopyWith<$Res> {
  factory _$$_TimeIsLeftCopyWith(
          _$_TimeIsLeft value, $Res Function(_$_TimeIsLeft) then) =
      __$$_TimeIsLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeIsLeftCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_TimeIsLeft>
    implements _$$_TimeIsLeftCopyWith<$Res> {
  __$$_TimeIsLeftCopyWithImpl(
      _$_TimeIsLeft _value, $Res Function(_$_TimeIsLeft) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimeIsLeft implements _TimeIsLeft {
  const _$_TimeIsLeft();

  @override
  String toString() {
    return 'GameEvent.timeIsLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimeIsLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return timeIsLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return timeIsLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) {
    if (timeIsLeft != null) {
      return timeIsLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return timeIsLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return timeIsLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
    required TResult orElse(),
  }) {
    if (timeIsLeft != null) {
      return timeIsLeft(this);
    }
    return orElse();
  }
}

abstract class _TimeIsLeft implements GameEvent {
  const factory _TimeIsLeft() = _$_TimeIsLeft;
}

/// @nodoc
abstract class _$$_SkipWordCopyWith<$Res> {
  factory _$$_SkipWordCopyWith(
          _$_SkipWord value, $Res Function(_$_SkipWord) then) =
      __$$_SkipWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SkipWordCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_SkipWord>
    implements _$$_SkipWordCopyWith<$Res> {
  __$$_SkipWordCopyWithImpl(
      _$_SkipWord _value, $Res Function(_$_SkipWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SkipWord implements _SkipWord {
  const _$_SkipWord();

  @override
  String toString() {
    return 'GameEvent.skipWord()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SkipWord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return skipWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return skipWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) {
    if (skipWord != null) {
      return skipWord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return skipWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return skipWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
    required TResult orElse(),
  }) {
    if (skipWord != null) {
      return skipWord(this);
    }
    return orElse();
  }
}

abstract class _SkipWord implements GameEvent {
  const factory _SkipWord() = _$_SkipWord;
}

/// @nodoc
abstract class _$$_CountWordCopyWith<$Res> {
  factory _$$_CountWordCopyWith(
          _$_CountWord value, $Res Function(_$_CountWord) then) =
      __$$_CountWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountWordCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_CountWord>
    implements _$$_CountWordCopyWith<$Res> {
  __$$_CountWordCopyWithImpl(
      _$_CountWord _value, $Res Function(_$_CountWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CountWord implements _CountWord {
  const _$_CountWord();

  @override
  String toString() {
    return 'GameEvent.countWord()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountWord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() resumeGame,
    required TResult Function() timeIsLeft,
    required TResult Function() skipWord,
    required TResult Function() countWord,
  }) {
    return countWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? resumeGame,
    TResult? Function()? timeIsLeft,
    TResult? Function()? skipWord,
    TResult? Function()? countWord,
  }) {
    return countWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? resumeGame,
    TResult Function()? timeIsLeft,
    TResult Function()? skipWord,
    TResult Function()? countWord,
    required TResult orElse(),
  }) {
    if (countWord != null) {
      return countWord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_PauseGame value) pauseGame,
    required TResult Function(_ResumeGame value) resumeGame,
    required TResult Function(_TimeIsLeft value) timeIsLeft,
    required TResult Function(_SkipWord value) skipWord,
    required TResult Function(_CountWord value) countWord,
  }) {
    return countWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_PauseGame value)? pauseGame,
    TResult? Function(_ResumeGame value)? resumeGame,
    TResult? Function(_TimeIsLeft value)? timeIsLeft,
    TResult? Function(_SkipWord value)? skipWord,
    TResult? Function(_CountWord value)? countWord,
  }) {
    return countWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_PauseGame value)? pauseGame,
    TResult Function(_ResumeGame value)? resumeGame,
    TResult Function(_TimeIsLeft value)? timeIsLeft,
    TResult Function(_SkipWord value)? skipWord,
    TResult Function(_CountWord value)? countWord,
    required TResult orElse(),
  }) {
    if (countWord != null) {
      return countWord(this);
    }
    return orElse();
  }
}

abstract class _CountWord implements GameEvent {
  const factory _CountWord() = _$_CountWord;
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
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
abstract class _$$_WaitingForConfigCopyWith<$Res> {
  factory _$$_WaitingForConfigCopyWith(
          _$_WaitingForConfig value, $Res Function(_$_WaitingForConfig) then) =
      __$$_WaitingForConfigCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingForConfigCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_WaitingForConfig>
    implements _$$_WaitingForConfigCopyWith<$Res> {
  __$$_WaitingForConfigCopyWithImpl(
      _$_WaitingForConfig _value, $Res Function(_$_WaitingForConfig) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WaitingForConfig implements _WaitingForConfig {
  const _$_WaitingForConfig();

  @override
  String toString() {
    return 'GameState.waitingForConfig()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WaitingForConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return waitingForConfig();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return waitingForConfig?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (waitingForConfig != null) {
      return waitingForConfig();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return waitingForConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return waitingForConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (waitingForConfig != null) {
      return waitingForConfig(this);
    }
    return orElse();
  }
}

abstract class _WaitingForConfig implements GameState {
  const factory _WaitingForConfig() = _$_WaitingForConfig;
}

/// @nodoc
abstract class _$$_WordsIsLoadingCopyWith<$Res> {
  factory _$$_WordsIsLoadingCopyWith(
          _$_WordsIsLoading value, $Res Function(_$_WordsIsLoading) then) =
      __$$_WordsIsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WordsIsLoadingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_WordsIsLoading>
    implements _$$_WordsIsLoadingCopyWith<$Res> {
  __$$_WordsIsLoadingCopyWithImpl(
      _$_WordsIsLoading _value, $Res Function(_$_WordsIsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WordsIsLoading implements _WordsIsLoading {
  const _$_WordsIsLoading();

  @override
  String toString() {
    return 'GameState.wordsIsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WordsIsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return wordsIsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return wordsIsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (wordsIsLoading != null) {
      return wordsIsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return wordsIsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return wordsIsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (wordsIsLoading != null) {
      return wordsIsLoading(this);
    }
    return orElse();
  }
}

abstract class _WordsIsLoading implements GameState {
  const factory _WordsIsLoading() = _$_WordsIsLoading;
}

/// @nodoc
abstract class _$$_GameIsReadyCopyWith<$Res> {
  factory _$$_GameIsReadyCopyWith(
          _$_GameIsReady value, $Res Function(_$_GameIsReady) then) =
      __$$_GameIsReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({GameSettings settings});
}

/// @nodoc
class __$$_GameIsReadyCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_GameIsReady>
    implements _$$_GameIsReadyCopyWith<$Res> {
  __$$_GameIsReadyCopyWithImpl(
      _$_GameIsReady _value, $Res Function(_$_GameIsReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_GameIsReady(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$_GameIsReady implements _GameIsReady {
  const _$_GameIsReady({required this.settings});

  @override
  final GameSettings settings;

  @override
  String toString() {
    return 'GameState.gameIsReady(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameIsReady &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameIsReadyCopyWith<_$_GameIsReady> get copyWith =>
      __$$_GameIsReadyCopyWithImpl<_$_GameIsReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return gameIsReady(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return gameIsReady?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (gameIsReady != null) {
      return gameIsReady(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return gameIsReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return gameIsReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (gameIsReady != null) {
      return gameIsReady(this);
    }
    return orElse();
  }
}

abstract class _GameIsReady implements GameState {
  const factory _GameIsReady({required final GameSettings settings}) =
      _$_GameIsReady;

  GameSettings get settings;
  @JsonKey(ignore: true)
  _$$_GameIsReadyCopyWith<_$_GameIsReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingForAnswerCopyWith<$Res> {
  factory _$$_WaitingForAnswerCopyWith(
          _$_WaitingForAnswer value, $Res Function(_$_WaitingForAnswer) then) =
      __$$_WaitingForAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({Word word});

  $WordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_WaitingForAnswerCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_WaitingForAnswer>
    implements _$$_WaitingForAnswerCopyWith<$Res> {
  __$$_WaitingForAnswerCopyWithImpl(
      _$_WaitingForAnswer _value, $Res Function(_$_WaitingForAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$_WaitingForAnswer(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordCopyWith<$Res> get word {
    return $WordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc

class _$_WaitingForAnswer implements _WaitingForAnswer {
  const _$_WaitingForAnswer({required this.word});

  @override
  final Word word;

  @override
  String toString() {
    return 'GameState.waitingForAnswer(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WaitingForAnswer &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitingForAnswerCopyWith<_$_WaitingForAnswer> get copyWith =>
      __$$_WaitingForAnswerCopyWithImpl<_$_WaitingForAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return waitingForAnswer(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return waitingForAnswer?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return waitingForAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return waitingForAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (waitingForAnswer != null) {
      return waitingForAnswer(this);
    }
    return orElse();
  }
}

abstract class _WaitingForAnswer implements GameState {
  const factory _WaitingForAnswer({required final Word word}) =
      _$_WaitingForAnswer;

  Word get word;
  @JsonKey(ignore: true)
  _$$_WaitingForAnswerCopyWith<_$_WaitingForAnswer> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return gamePaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return gamePaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
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
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return gamePaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return gamePaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
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

/// @nodoc
abstract class _$$_LastWordCopyWith<$Res> {
  factory _$$_LastWordCopyWith(
          _$_LastWord value, $Res Function(_$_LastWord) then) =
      __$$_LastWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LastWordCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_LastWord>
    implements _$$_LastWordCopyWith<$Res> {
  __$$_LastWordCopyWithImpl(
      _$_LastWord _value, $Res Function(_$_LastWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LastWord implements _LastWord {
  const _$_LastWord();

  @override
  String toString() {
    return 'GameState.lastWord()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LastWord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return lastWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return lastWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (lastWord != null) {
      return lastWord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return lastWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return lastWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (lastWord != null) {
      return lastWord(this);
    }
    return orElse();
  }
}

abstract class _LastWord implements GameState {
  const factory _LastWord() = _$_LastWord;
}

/// @nodoc
abstract class _$$_CommandMoveIsOverCopyWith<$Res> {
  factory _$$_CommandMoveIsOverCopyWith(_$_CommandMoveIsOver value,
          $Res Function(_$_CommandMoveIsOver) then) =
      __$$_CommandMoveIsOverCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommandMoveIsOverCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_CommandMoveIsOver>
    implements _$$_CommandMoveIsOverCopyWith<$Res> {
  __$$_CommandMoveIsOverCopyWithImpl(
      _$_CommandMoveIsOver _value, $Res Function(_$_CommandMoveIsOver) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CommandMoveIsOver implements _CommandMoveIsOver {
  const _$_CommandMoveIsOver();

  @override
  String toString() {
    return 'GameState.commandMoveIsOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CommandMoveIsOver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waitingForConfig,
    required TResult Function() wordsIsLoading,
    required TResult Function(GameSettings settings) gameIsReady,
    required TResult Function(Word word) waitingForAnswer,
    required TResult Function() gamePaused,
    required TResult Function() lastWord,
    required TResult Function() commandMoveIsOver,
  }) {
    return commandMoveIsOver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waitingForConfig,
    TResult? Function()? wordsIsLoading,
    TResult? Function(GameSettings settings)? gameIsReady,
    TResult? Function(Word word)? waitingForAnswer,
    TResult? Function()? gamePaused,
    TResult? Function()? lastWord,
    TResult? Function()? commandMoveIsOver,
  }) {
    return commandMoveIsOver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waitingForConfig,
    TResult Function()? wordsIsLoading,
    TResult Function(GameSettings settings)? gameIsReady,
    TResult Function(Word word)? waitingForAnswer,
    TResult Function()? gamePaused,
    TResult Function()? lastWord,
    TResult Function()? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (commandMoveIsOver != null) {
      return commandMoveIsOver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WaitingForConfig value) waitingForConfig,
    required TResult Function(_WordsIsLoading value) wordsIsLoading,
    required TResult Function(_GameIsReady value) gameIsReady,
    required TResult Function(_WaitingForAnswer value) waitingForAnswer,
    required TResult Function(_GamePaused value) gamePaused,
    required TResult Function(_LastWord value) lastWord,
    required TResult Function(_CommandMoveIsOver value) commandMoveIsOver,
  }) {
    return commandMoveIsOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WaitingForConfig value)? waitingForConfig,
    TResult? Function(_WordsIsLoading value)? wordsIsLoading,
    TResult? Function(_GameIsReady value)? gameIsReady,
    TResult? Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult? Function(_GamePaused value)? gamePaused,
    TResult? Function(_LastWord value)? lastWord,
    TResult? Function(_CommandMoveIsOver value)? commandMoveIsOver,
  }) {
    return commandMoveIsOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WaitingForConfig value)? waitingForConfig,
    TResult Function(_WordsIsLoading value)? wordsIsLoading,
    TResult Function(_GameIsReady value)? gameIsReady,
    TResult Function(_WaitingForAnswer value)? waitingForAnswer,
    TResult Function(_GamePaused value)? gamePaused,
    TResult Function(_LastWord value)? lastWord,
    TResult Function(_CommandMoveIsOver value)? commandMoveIsOver,
    required TResult orElse(),
  }) {
    if (commandMoveIsOver != null) {
      return commandMoveIsOver(this);
    }
    return orElse();
  }
}

abstract class _CommandMoveIsOver implements GameState {
  const factory _CommandMoveIsOver() = _$_CommandMoveIsOver;
}
