part of 'game_settings_bloc.dart';

@freezed
class GameSettingsState with _$GameSettingsState {
  const factory GameSettingsState.ready({
    required CommandMoveMode time,
    required BinarySelectorMode lastWordMode,
    required BinarySelectorMode penaltyMode,
    required WordsToWin wordsToWin,
  }) = _Ready;
}
