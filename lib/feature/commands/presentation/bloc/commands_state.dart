part of 'commands_bloc.dart';

@freezed
class CommandsState with _$CommandsState {
  const factory CommandsState.initial() = _Initial;
  const factory CommandsState.loading() = _Loading;
  const factory CommandsState.loaded({
    required List<Command> allCommands,
    required List<Command> addedCommand,
  }) = _Loaded;
}
