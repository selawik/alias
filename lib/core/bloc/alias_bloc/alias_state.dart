part of 'alias_bloc.dart';

@freezed
class AliasState with _$AliasState {
  const factory AliasState.initial() = _Initial;

  const factory AliasState.gameIsLoading({
    required CommandMoveTimeSelector moveTime,
    required BinarySelectorMode lastWordMode,
    required BinarySelectorMode penaltyMode,
    required List<Command> commands,
  }) = _GameIsLoading;

  const factory AliasState.gameLoadingError() = _GameLoadingError;

  const factory AliasState.commandStep({
    required Command command,
    required List<Word> words,
  }) = _CommandStep;

  const factory AliasState.roundEnd() = _RoundEnd;

  const factory AliasState.gameOver() = _GameOver;
}
