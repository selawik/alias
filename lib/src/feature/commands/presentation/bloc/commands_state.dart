part of 'commands_bloc.dart';

@freezed
class CommandsState with _$CommandsState {
  const CommandsState._();

  bool get isEnoughToRemove =>
      mapOrNull(
        loaded: (state) => state.addedCommands.length > 2,
      ) ??
      false;

  const factory CommandsState.initial() = _Initial;
  const factory CommandsState.loading() = _Loading;
  const factory CommandsState.loaded({
    required Set<Command> addedCommands,
    required Set<Command> allCommands,
  }) = _Loaded;
}
