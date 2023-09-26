part of 'commands_bloc.dart';

@freezed
class CommandsState with _$CommandsState {
  const CommandsState._();

  bool get isEnoughToRemove =>
      mapOrNull(
        loaded: (state) => state.addedCommands.length > 2,
      ) ??
      false;

  const factory CommandsState.loading() = _Loading;
  const factory CommandsState.loaded({
    required Set<CommandEntity> addedCommands,
    required Set<CommandEntity> allCommands,
  }) = _Loaded;

  const factory CommandsState.error({
    required String message,
  }) = _Error;
}
