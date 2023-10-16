import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/domain/entity/game.dart';
import 'package:alias/src/feature/game/domain/entity/game_settings.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/game/domain/usecases/get_played_words.dart';
import 'package:alias/src/feature/game/domain/usecases/get_unfinished_game.dart';
import 'package:alias/src/feature/game/domain/usecases/load_words.dart';
import 'package:alias/src/feature/game/domain/usecases/reset_game_history.dart';
import 'package:alias/src/feature/game/domain/usecases/reset_unfinished_game.dart';
import 'package:alias/src/feature/game/domain/usecases/save_played_words.dart';
import 'package:alias/src/feature/game/domain/usecases/save_started_game.dart';
import 'package:alias/src/feature/game_settings/domain/entity/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/entity/command_move_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class WordsUseCasesFacade {
  final LoadWords _loadWords;
  final SavePlayedWords _savePlayedWords;
  final GetPlayedWords _getPlayedWords;
  final ResetGameHistory _resetGameHistory;
  final GetUnfinishedGame _getUnfinishedGame;
  final SaveStartedGame _saveStartedGame;
  final ResetUnfinishedGame _resetUnfinishedGame;

  WordsUseCasesFacade({
    required LoadWords loadWords,
    required SavePlayedWords savePlayedWords,
    required GetPlayedWords getPlayedWords,
    required ResetGameHistory resetGameHistory,
    required GetUnfinishedGame getUnfinishedGame,
    required SaveStartedGame saveStartedGame,
    required ResetUnfinishedGame resetUnfinishedGame,
  })  : _loadWords = loadWords,
        _savePlayedWords = savePlayedWords,
        _getPlayedWords = getPlayedWords,
        _resetGameHistory = resetGameHistory,
        _getUnfinishedGame = getUnfinishedGame,
        _saveStartedGame = saveStartedGame,
        _resetUnfinishedGame = resetUnfinishedGame;

  Future<Either<Failure, List<WordEntity>>> loadWords({
    required CategoryEntity category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    required CommandMoveMode moveTime,
    Iterable<WordEntity>? playedWords,
  }) async {
    return _loadWords.execute(
      category: category,
      commandsCount: commandsCount,
      penaltyMode: penaltyMode,
      playedWords: playedWords,
      moveTime: moveTime,
    );
  }

  Future<Future<Either<dynamic, void>>> savePlayedWords({
    required List<WordEntity> words,
  }) async {
    return _savePlayedWords.execute(
      words: words,
    );
  }

  Future<Either<Failure, Iterable<WordEntity>>> loadPlayedWords({
    required CategoryEntity category,
  }) async {
    return _getPlayedWords.execute(
      category: category,
    );
  }

  Future<Either<Failure, Game?>> loadUnfinishedGame() async {
    return _getUnfinishedGame.execute();
  }

  Future<Either<Failure, void>> resetGameHistory() async {
    return _resetGameHistory.execute();
  }

  Future<Either<Failure, void>> resetUnfinishedGame() async {
    return _resetUnfinishedGame.execute();
  }

  Future<Either<Failure, void>> saveStartedGame({
    required GameSettings settings,
    required CategoryEntity category,
    required List<PlayingCommand> commands,
  }) async {
    return _saveStartedGame.execute(
      category: category,
      gameSettings: settings,
      commands: commands,
    );
  }
}
