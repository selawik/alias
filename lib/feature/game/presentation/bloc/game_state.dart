part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.waitingForConfig() = _WaitingForConfig;

  const factory GameState.wordsIsLoading() = _WordsIsLoading;

  const factory GameState.gameIsReady({required GameSettings settings}) =
      _GameIsReady;

  const factory GameState.waitingForAnswer({required Word word}) =
      _WaitingForAnswer;

  const factory GameState.gamePaused() = _GamePaused;

  const factory GameState.lastWord() = _LastWord;

  const factory GameState.commandMoveIsOver({
    required List<GameAnswer> answers,
    required int commandScore,
  }) = _CommandMoveIsOver;
}
