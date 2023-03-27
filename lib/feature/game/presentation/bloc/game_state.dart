part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.waitingForConfig({Game? game}) = _WaitingForConfig;

  const factory GameState.wordsIsLoading() = _WordsIsLoading;

  const factory GameState.noWords() = _NoWords;

  const factory GameState.gameIsReady({
    required GameSettings settings,
    required List<PlayingCommand> commands,
    required PlayingCommand playingCommand,
  }) = _GameIsReady;

  const factory GameState.waitingForAnswer({required Word word}) =
      _WaitingForAnswer;

  const factory GameState.skippingWord({required Word skippingWord}) =
      _SkippingWord;

  const factory GameState.gamePaused() = _GamePaused;

  const factory GameState.lastWord({required Word word}) = _LastWord;

  const factory GameState.commandMoveIsOver({
    required PlayingCommand command,
    required List<GameAnswer> answers,
    required int commandScore,
  }) = _CommandMoveIsOver;

  const factory GameState.gameOver({required List<PlayingCommand> commands}) =
      _GameOver;
}
