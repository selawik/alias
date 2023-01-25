part of 'game_settings_bloc.dart';

@freezed
class GameSettingsEvent with _$GameSettingsEvent {
  const factory GameSettingsEvent.started() = _Started;
  const factory GameSettingsEvent.moveTimeChanged(CommandMoveMode moveTime) =
      _MoveTimeChanged;
  const factory GameSettingsEvent.lastWordModeChanged(BinarySelectorMode mode) =
      _LastWordModeChanged;
  const factory GameSettingsEvent.penaltyModeChanged(BinarySelectorMode mode) =
      _PenaltyModeChanged;
}
