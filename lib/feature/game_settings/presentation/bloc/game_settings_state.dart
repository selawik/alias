part of 'game_settings_bloc.dart';

@freezed
class GameSettingsState with _$GameSettingsState {
  const factory GameSettingsState.ready(
    CommandMoveModeSelector time,
    BinarySelectorMode lastWordMode,
    BinarySelectorMode penaltyMode,
  ) = _Ready;
}
