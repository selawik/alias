import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_settings_bloc.freezed.dart';
part 'game_settings_event.dart';
part 'game_settings_state.dart';

@Injectable()
class GameSettingsBloc extends Bloc<GameSettingsEvent, GameSettingsState> {
  GameSettingsBloc()
      : super(const GameSettingsState.ready(
          CommandMoveMode.minute,
          BinarySelectorMode.enabled,
          BinarySelectorMode.disabled,
        )) {
    on<_PenaltyModeChanged>(_onPenaltyModeChanged);
    on<_LastWordModeChanged>(_onLastWordModeChanged);
    on<_MoveTimeChanged>(_onMoveTimeChanged);
  }

  void _onPenaltyModeChanged(_PenaltyModeChanged event, Emitter emit) {
    emit(GameSettingsState.ready(
      state.time,
      state.lastWordMode,
      event.mode,
    ));
  }

  void _onLastWordModeChanged(_LastWordModeChanged event, Emitter emit) {
    emit(GameSettingsState.ready(
      state.time,
      event.mode,
      state.penaltyMode,
    ));
  }

  void _onMoveTimeChanged(_MoveTimeChanged event, Emitter emit) {
    emit(GameSettingsState.ready(
      event.moveTime,
      state.lastWordMode,
      state.penaltyMode,
    ));
  }
}
