import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/game/domain/entity/game.dart';
import 'package:alias/src/feature/game/domain/entity/game_answer.dart';
import 'package:alias/src/feature/game/domain/entity/game_settings.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/game/domain/words_usecases_facade.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  final WordsUseCasesFacade _wordsUseCasesFacade;

  late Category _category;
  late GameSettings _settings;

  List<Word> _words = [];

  final List<Word> _countWords = [];

  List<GameAnswer> _answers = [];

  List<PlayingCommand> _commands = [];

  GameBloc({required WordsUseCasesFacade wordsUseCasesFacade})
      : _wordsUseCasesFacade = wordsUseCasesFacade,
        super(const GameState.waitingForConfig()) {
    on<_Init>(_onInit);
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
    on<_ResetGameHistory>(_onResetGameHistory);
    on<_ResetLastGame>(_onResetLastGame);
  }

  Future<void> _onInit(_Init event, Emitter<GameState> emit) async {
    final game = await _tryToLoadStartedGame();

    emit(GameState.waitingForConfig(game: game));
  }

  void _onCategoryInitialization(
      _InitializeCategory event, Emitter<GameState> emit) {
    _category = event.category;
  }

  void _onCommandsInitialization(
      _InitializeCommands event, Emitter<GameState> emit) {
    _commands = event.commands
        .map((command) => PlayingCommand(
              commandId: command.commandId,
              name: command.name,
            ))
        .toList();
  }

  Future<void> _onSettingsInitialization(
    _InitializeSettings event,
    Emitter<GameState> emit,
  ) async {
    _settings = event.gameSettings;

    emit(const GameState.wordsIsLoading());

    final playedWords = await _loadPlayedWords();

    final wordsResult = await _wordsUseCasesFacade.loadWords(
      category: _category,
      penaltyMode: _settings.penaltyMode,
      commandsCount: _commands.length,
      playedWords: playedWords,
      moveTime: _settings.moveTime,
    );

    _words = wordsResult.fold((failure) => null, (words) => words) ?? [];

    if (_words.isEmpty) {
      emit(const GameState.noWords());
      return;
    }

    _words.shuffle();

    await _wordsUseCasesFacade.saveStartedGame(
      settings: _settings,
      category: _category,
      commands: _commands,
    );

    emit(GameState.gameIsReady(
      settings: _settings,
      commands: _commands,
      playingCommand: _getPlayingCommand(),
    ));
  }

  Future<Iterable<Word>?> _loadPlayedWords() async {
    final result =
        await _wordsUseCasesFacade.loadPlayedWords(category: _category);

    final playedWords = result.fold((failure) => null, (words) => words);

    return (playedWords?.isEmpty ?? false) ? null : playedWords;
  }

  void _onStartGame(_StartGame event, Emitter<GameState> emit) {
    if (_words.isNotEmpty) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      //try load words;
    }
  }

  void _onPauseGame(_PauseGame event, Emitter<GameState> emit) {
    emit(const GameState.gamePaused());
  }

  void _onResumeGame(_ResumeGame event, Emitter<GameState> emit) {
    emit(GameState.waitingForAnswer(word: _words.first));
  }

  void _onTimeIsLeft(_TimeIsLeft event, Emitter<GameState> emit) {
    if (_settings.lastWordMode.isEnabled) {
      emit(GameState.lastWord(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _getPlayingCommand(),
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onSkipWord(_SkipWord event, Emitter<GameState> emit) {
    final word = _words.first;

    _answers.add(GameAnswer(word: word, type: GameAnswerType.skip));
    _words.remove(word);

    if (_words.isNotEmpty && state is! _LastWord) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _getPlayingCommand(),
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onCountWord(_CountWord event, Emitter<GameState> emit) {
    final word = _words.first;

    _answers.add(GameAnswer(word: word, type: GameAnswerType.count));
    _countWords.add(word);
    _words.remove(word);

    if (_words.isNotEmpty && state is! _LastWord) {
      emit(GameState.waitingForAnswer(word: _words.first));
    } else {
      emit(
        GameState.commandMoveIsOver(
          command: _getPlayingCommand(),
          answers: _answers,
          commandScore: _getCommandScore(),
        ),
      );
    }
  }

  void _onChangeAnswer(_ChangeAnswer event, Emitter<GameState> emit) {
    _answers = List<GameAnswer>.from(_answers);

    final index =
        _answers.indexWhere((element) => element.word == event.answer.word);

    _answers[index] =
        event.answer.copyWith(type: event.answer.type.switchedValue);

    emit(
      GameState.commandMoveIsOver(
        command: _getPlayingCommand(),
        answers: _answers,
        commandScore: _getCommandScore(),
      ),
    );
  }

  void _onMoveResultWatched(_MoveResultWatched event, Emitter<GameState> emit) {
    final playingCommand = _getPlayingCommand();

    final updatedPlayedCommand = playingCommand.copyWith(
      score: playingCommand.score + _getCommandScore(),
      playedRoundCount: playingCommand.playedRoundCount + 1,
    );

    final index = _commands.indexOf(playingCommand);

    _commands[index] = updatedPlayedCommand;

    _words.addAll(_answers
        .where((element) => !element.type.isCount)
        .map((answer) => answer.word));

    _wordsUseCasesFacade.savePlayedWords(
        words: _answers
            .where((element) => element.type.isCount)
            .map((answer) => answer.word)
            .toList());

    _answers.clear();
    _words.shuffle();

    if (_words.isEmpty) {
      _emitGameOverEvent(emit);
      return;
    }

    if (_isRoundComplete() && _isReachedWordsToWin()) {
      _emitGameOverEvent(emit);
    } else {
      emit(GameState.gameIsReady(
        settings: _settings,
        commands: _commands,
        playingCommand: _getPlayingCommand(),
      ));
    }
  }

  bool _isRoundComplete() {
    final firstCommandRoundPlayedCount = _commands.first.playedRoundCount;

    final isRoundEnd = _commands.fold(
          firstCommandRoundPlayedCount,
          (previousValue, command) => command.playedRoundCount != previousValue
              ? command.playedRoundCount
              : previousValue,
        ) ==
        firstCommandRoundPlayedCount;

    return isRoundEnd;
  }

  bool _isReachedWordsToWin() {
    return _commands.firstWhereOrNull(
            (command) => command.score >= _settings.wordsToWin.value) !=
        null;
  }

  void _emitGameOverEvent(Emitter<GameState> emit) {
    _commands
        .sort((command1, command2) => command2.score.compareTo(command1.score));

    emit(GameState.gameOver(commands: _commands));
  }

  Future<void> _onResetGame(_ResetGame event, Emitter<GameState> emit) async {
    _commands.clear();
    _answers.clear();
    _words.clear();
    _countWords.clear();

    final game = await _tryToLoadStartedGame();

    emit(GameState.waitingForConfig(game: game));
  }

  Future<void> _onResetGameHistory(
      _ResetGameHistory event, Emitter<GameState> emit) async {
    await _wordsUseCasesFacade.resetGameHistory();
  }

  int _getCommandScore() {
    final countWords = _answers.where((element) => element.type.isCount);

    if (_settings.penaltyMode.isEnabled) {
      return countWords.length - (_answers.length - countWords.length);
    }

    return countWords.length;
  }

  Future<Game?> _tryToLoadStartedGame() async {
    final result = await _wordsUseCasesFacade.loadUnfinishedGame();

    return result.fold((failure) => null, (game) => game);
  }

  Future<void> _onResetLastGame(
      _ResetLastGame event, Emitter<GameState> emit) async {
    await _wordsUseCasesFacade.resetUnfinishedGame();

    emit(const GameState.waitingForConfig());
  }

  PlayingCommand _getPlayingCommand() {
    return _commands.reduce(
      (value, element) =>
          value.playedRoundCount <= element.playedRoundCount ? value : element,
    );
  }
}
