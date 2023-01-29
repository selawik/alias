import 'package:alias/feature/game/domain/game_settings.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_bloc.freezed.dart';

part 'game_event.dart';

part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  late GameSettings _settings;

  late List<Word> _words;

  final List<Word> _skippedWords = [];
  final List<Word> _countWords = [];

  GameBloc() : super(const GameState.waitingForConfig()) {
    on<_Initial>(_onInitial);
    on<_StartGame>(_onStartGame);
    on<_PauseGame>(_onPauseGame);
    on<_ResumeGame>(_onResumeGame);
    on<_TimeIsLeft>(_onTimeIsLeft);
    on<_CountWord>(_onCountWord);
    on<_SkipWord>(_onSkipWord);
  }

  void _onInitial(_Initial event, Emitter emit) {
    _settings = event.gameSettings;

    _words = [
      const Word(categoryId: 1, wordId: 1, name: 'Слово 1'),
      const Word(categoryId: 1, wordId: 1, name: 'Слово 2'),
      const Word(categoryId: 1, wordId: 1, name: 'Слово 3'),
      const Word(categoryId: 1, wordId: 1, name: 'Слово 4'),
    ];

    emit(GameState.gameIsReady(settings: _settings));
  }

  void _onStartGame(_StartGame event, Emitter emit) {
    if (_words.isNotEmpty) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      //try load words;
    }
  }

  void _onPauseGame(_PauseGame event, Emitter emit) {
    emit(const GameState.gamePaused());
  }

  void _onResumeGame(_ResumeGame event, Emitter emit) {
    emit(GameState.waitingForAnswer(word: _words.first));
  }

  void _onTimeIsLeft(_TimeIsLeft event, Emitter emit) {
    if (_settings.lastWordMode.isEnabled) {
      emit(const GameState.lastWord());
    } else {
      emit(const GameState.commandMoveIsOver());
    }
  }

  void _onSkipWord(_SkipWord event, Emitter emit) {}

  void _onCountWord(_CountWord event, Emitter emit) {
    if (_words.isNotEmpty) {
      _countWords.add(_words.first);
      _words.removeAt(0);

      if (_words.isNotEmpty) {
        emit(GameState.waitingForAnswer(word: _words.first));
      } else {
        emit(const GameState.commandMoveIsOver());
      }
    }
  }
}
