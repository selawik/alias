import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/command_move_time_selector.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings_bloc.freezed.dart';
part 'game_settings_event.dart';
part 'game_settings_state.dart';

class GameSettingsBloc extends Bloc<GameSettingsEvent, GameSettingsState> {
  GameSettingsBloc()
      : super(const GameSettingsState.ready(
          CommandMoveModeSelector.minute,
          BinarySelectorMode.enabled,
          BinarySelectorMode.disabled,
        )) {
    on<_PenaltyModeChanged>(_onPenaltyModeChanged);
    on<_LastWordModeChanged>(_onLastWordModeChanged);
    on<_MoveTimeChanged>(_onMoveTimeChanged);
  }

  void _onPenaltyModeChanged(_PenaltyModeChanged event, Emitter emit) {}

  void _onLastWordModeChanged(_LastWordModeChanged event, Emitter emit) {}

  void _onMoveTimeChanged(_MoveTimeChanged event, Emitter emit) {}
}
