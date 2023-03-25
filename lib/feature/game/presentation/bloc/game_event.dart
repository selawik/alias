part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.init() = _Init;

  const factory GameEvent.initializeCategory({required Category category}) = _InitializeCategory;

  const factory GameEvent.initializeCommands({required List<CommandDto> commands}) = _InitializeCommands;

  const factory GameEvent.initializeSettings(
      {required GameSettings gameSettings}) = _InitializeSettings;

  const factory GameEvent.startGame() = _StartGame;

  const factory GameEvent.pauseGame() = _PauseGame;

  const factory GameEvent.resumeGame() = _ResumeGame;

  const factory GameEvent.timeIsLeft() = _TimeIsLeft;

  const factory GameEvent.skipWord() = _SkipWord;

  const factory GameEvent.countWord() = _CountWord;

  const factory GameEvent.changeAnswer({required GameAnswer answer}) =
      _ChangeAnswer;

  const factory GameEvent.moveResultWatched() = _MoveResultWatched;

  const factory GameEvent.resetGame() = _ResetGame;

  const factory GameEvent.resetGameHistory() = _ResetGameHistory;

  const factory GameEvent.resetLastGame() = _ResetLastGame;


}
