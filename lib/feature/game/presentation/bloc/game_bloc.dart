import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/domain/model/game_answer.dart';
import 'package:alias/feature/game/domain/model/game_settings.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:alias/feature/game/domain/usecases/load_words.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_bloc.freezed.dart';

part 'game_event.dart';

part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  final LoadWords _loadWords;

  late Category _category;
  late GameSettings _settings;

  late List<Word> _words;

  List<Word> _countWords = [];

  List<GameAnswer> _answers = [];

  List<PlayingCommand> _commands = [];

  GameBloc({required LoadWords loadWords})
      : _loadWords = loadWords,
        super(const GameState.waitingForConfig()) {
    on<_InitializeCategory>(_onCategoryInitialization);
    on<_InitializeCommands>(_onCommandsInitialization);
    on<_InitializeSettings>(_onSettingsInitialization);
    on<_StartGame>(_onStartGame);
    on<_PauseGame>(_onPauseGame);
    on<_ResumeGame>(_onResumeGame);
    on<_TimeIsLeft>(_onTimeIsLeft);
    on<_CountWord>(_onCountWord);
    on<_SkipWord>(_onSkipWord);
    on<_ChangeAnswer>(_onChangeAnswer);
    on<_MoveResultWatched>(_onMoveResultWatched);
    on<_ResetGame>(_onResetGame);
  }

  void _onCategoryInitialization(_InitializeCategory event, Emitter emit) {
    _category = event.category;
  }

  void _onCommandsInitialization(_InitializeCommands event, Emitter emit) {
    _commands = event.commands
        .map((command) => PlayingCommand(
              commandId: command.commandId,
              name: command.name,
            ))
        .toList();
  }

  void _onSettingsInitialization(
      _InitializeSettings event, Emitter emit) async {
    _settings = event.gameSettings;

    emit(const GameState.wordsIsLoading());

    var wordsResult = await _loadWords.execute(
      category: _category,
      penaltyMode: _settings.penaltyMode,
      commandsCount: _commands.length,
    );

    wordsResult.fold(
      (failure) => null,
      (result) => _words = result,
    );

    _words.shuffle();
    emit(GameState.gameIsReady(settings: _settings, commands: _commands));
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
      emit(GameState.lastWord(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _commands.first,
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onSkipWord(_SkipWord event, Emitter emit) {
    var word = _words.first;

    _answers.add(GameAnswer(word: word, type: GameAnswerType.skip));
    _words.remove(word);

    if (_words.isNotEmpty && state is! _LastWord) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _commands.first,
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onCountWord(_CountWord event, Emitter emit) {
    var word = _words.first;

    _answers.add(GameAnswer(word: word, type: GameAnswerType.count));
    _countWords.add(word);
    _words.remove(word);

    if (_words.isNotEmpty && state is! _LastWord) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _commands.first,
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onChangeAnswer(_ChangeAnswer event, Emitter emit) {
    _answers = List<GameAnswer>.from(_answers);

    var index =
        _answers.indexWhere((element) => element.word == event.answer.word);

    _answers[index] =
        event.answer.copyWith(type: event.answer.type.switchedValue);

    emit(
      GameState.commandMoveIsOver(
        command: _commands.first,
        answers: _answers,
        commandScore: _getCommandScore(),
      ),
    );
  }

  void _onMoveResultWatched(_MoveResultWatched event, Emitter emit) {
    var playingCommand = _commands.first;

    _commands.add(playingCommand.copyWith(score: _getCommandScore()));
    _commands.remove(playingCommand);

    _words.addAll(_answers
        .where((element) => !element.type.isCount)
        .map((answer) => answer.word));

    _answers.clear();
    _words.shuffle();

    if (_words.isEmpty) {
      _commands.sort(
          (command1, command2) => command2.score.compareTo(command1.score));
      emit(GameState.gameOver(commands: _commands));
    } else {
      emit(GameState.gameIsReady(settings: _settings, commands: _commands));
    }
  }

  void _onResetGame(_ResetGame event, Emitter emit) {
    _commands.clear();
    _answers.clear();
    _words.clear();
    _countWords.clear();

    emit(const GameState.waitingForConfig());
  }

  int _getCommandScore() {
    var countWords = _answers.where((element) => element.type.isCount);

    if (_settings.penaltyMode.isEnabled) {
      return countWords.length - (_answers.length - countWords.length);
    }

    return countWords.length;
  }
}
