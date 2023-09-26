part of 'commands_bloc.dart';

@freezed
class CommandsEvent with _$CommandsEvent {
  const factory CommandsEvent.loadCommands() = _LoadCommands;

  const factory CommandsEvent.addCommand() = _AddCommand;

  const factory CommandsEvent.removeCommand({required CommandEntity command}) =
      _RemoveCommand;
}
