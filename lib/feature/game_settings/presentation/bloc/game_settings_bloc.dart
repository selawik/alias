import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_settings_bloc.freezed.dart';
part 'game_settings_event.dart';
part 'game_settings_state.dart';

@Injectable()
class GameSettingsBloc extends Bloc<GameSettingsEvent, GameSettingsState> {
  GameSettingsBloc()
      : super(
          const GameSettingsState.ready(
            time: CommandMoveMode.minute,
            lastWordMode: BinarySelectorMode.enabled,
            penaltyMode: BinarySelectorMode.disabled,
          ),
        ) {
    on<_PenaltyModeChanged>(_onPenaltyModeChanged);
    on<_LastWordModeChanged>(_onLastWordModeChanged);
    on<_MoveTimeChanged>(_onMoveTimeChanged);
  }

  void _onPenaltyModeChanged(_PenaltyModeChanged event, Emitter emit) {
    var newState = GameSettingsState.ready(
      time: state.time,
      lastWordMode: state.lastWordMode,
      penaltyMode: event.mode,
    );

    emit(newState);
  }

  void _onLastWordModeChanged(_LastWordModeChanged event, Emitter emit) {
    var newState = GameSettingsState.ready(
      time: state.time,
      lastWordMode: event.mode,
      penaltyMode: state.penaltyMode,
    );

    emit(newState);
  }

  void _onMoveTimeChanged(_MoveTimeChanged event, Emitter emit) {
    var newState = GameSettingsState.ready(
      time: event.moveTime,
      lastWordMode: state.lastWordMode,
      penaltyMode: state.penaltyMode,
    );

    emit(newState);
  }
}
