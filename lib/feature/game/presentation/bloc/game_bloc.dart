import 'package:alias/feature/game/domain/game_settings.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {

  late GameSettings _settings;

  GameBloc() : super(const GameState.waitingForAnswer()) {
    on<_Initial>(_onInitial);
    on<_StartGame>(_onStartGame);
    on<_PauseGame>(_onPauseGame);
    on<_ResumeGame>(_onResumeGame);
    on<_TimeIsLeft>(_onTimeIsLeft);
  }

  void _onInitial(_Initial event, Emitter emit) {
    _settings = event.gameSettings;
    emit(GameState.gameIsReady(settings: _settings));
  }

  void _onStartGame(_StartGame event, Emitter emit) {
    emit(const GameState.waitingForAnswer());
  }

  void _onPauseGame(_PauseGame event, Emitter emit) {
    emit(const GameState.gamePaused());
  }

  void _onResumeGame(_ResumeGame event, Emitter emit) {
    emit(const GameState.waitingForAnswer());
  }

  void _onTimeIsLeft(_TimeIsLeft event, Emitter emit) {
    if (_settings.lastWordMode.isEnabled) {
      emit(const GameState.lastWord());
    } else {
      emit(const GameState.commandMoveIsOver());
    }
  }
}
