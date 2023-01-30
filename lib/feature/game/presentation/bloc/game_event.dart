part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.initial(
      {required GameSettings gameSettings}) = _Initial;

  const factory GameEvent.startGame() = _StartGame;

  const factory GameEvent.pauseGame() = _PauseGame;

  const factory GameEvent.resumeGame() = _ResumeGame;

  const factory GameEvent.timeIsLeft() = _TimeIsLeft;

  const factory GameEvent.skipWord() = _SkipWord;

  const factory GameEvent.countWord() = _CountWord;

  const factory GameEvent.changeAnswer({required GameAnswer answer}) =
      _ChangeAnswer;

}
