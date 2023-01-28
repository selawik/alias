part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.gameIsReady({required GameSettings settings}) = _GameIsReady;
  const factory GameState.waitingForAnswer() = _WaitingForAnswer;
  const factory GameState.gamePaused() = _GamePaused;
  const factory GameState.lastWord() = _LastWord;
  const factory GameState.commandMoveIsOver() = _CommandMoveIsOver;

}
