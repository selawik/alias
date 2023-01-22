part of 'commands_bloc.dart';

@freezed
class CommandsEvent with _$CommandsEvent {
  const factory CommandsEvent.loadCommands() = _LoadCommands;

  const factory CommandsEvent.addCommand({required Command command}) =
      _AddCommand;

  const factory CommandsEvent.removeCommand({required Command command}) =
      _RemoveCommand;
}
