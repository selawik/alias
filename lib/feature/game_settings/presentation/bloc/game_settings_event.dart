part of 'game_settings_bloc.dart';

@freezed
class GameSettingsEvent with _$GameSettingsEvent {
  const factory GameSettingsEvent.started() = _Started;

  const factory GameSettingsEvent.moveTimeChanged({
    required CommandMoveMode moveTime,
  }) = _MoveTimeChanged;

  const factory GameSettingsEvent.lastWordModeChanged({
    required BinarySelectorMode mode,
  }) = _LastWordModeChanged;

  const factory GameSettingsEvent.penaltyModeChanged({
    required BinarySelectorMode mode,
  }) = _PenaltyModeChanged;
}
