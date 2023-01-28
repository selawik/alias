part of 'alias_bloc.dart';

@freezed
class AliasState with _$AliasState {
  const factory AliasState.initial() = _Initial;

  const factory AliasState.gameIsLoading({
    required GameSettings gameSettings,
    required List<Command> commands,
  }) = _GameIsLoading;

  const factory AliasState.gameLoadingError() = _GameLoadingError;

  const factory AliasState.gameIsReady({
    required GameSettings gameSettings,
    required List<Word> words,
  }) = _GameIsReady;
}
