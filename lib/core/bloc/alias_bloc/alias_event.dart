part of 'alias_bloc.dart';

@freezed
class AliasEvent with _$AliasEvent {
  const factory AliasEvent.started() = _Started;

  const factory AliasEvent.categorySelected({required Category category}) =
      _CategorySelected;

  const factory AliasEvent.commandsFormed({required List<Command> commands}) =
      _CommandsFormed;

  const factory AliasEvent.gameSettingsSelected({
    required CommandMoveTimeSelector moveTime,
    required BinarySelectorMode lastWordMode,
    required BinarySelectorMode penaltyMode,
    required List<Command> commands,
  }) = _GameSettingsSelected;
}
