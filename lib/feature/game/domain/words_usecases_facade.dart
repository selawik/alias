import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/model/game.dart';
import 'package:alias/feature/game/domain/usecases/get_played_words.dart';
import 'package:alias/feature/game/domain/usecases/get_unfinished_game.dart';
import 'package:alias/feature/game/domain/usecases/load_words.dart';
import 'package:alias/feature/game/domain/usecases/reset_game_history.dart';
import 'package:alias/feature/game/domain/usecases/save_played_words.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class WordsUseCasesFacade {
  final LoadWords _loadWords;
  final SavePlayedWords _savePlayedWords;
  final GetPlayedWords _getPlayedWords;
  final ResetGameHistory _resetGameHistory;
  final GetUnfinishedGame _getUnfinishedGame;

  WordsUseCasesFacade({
    required LoadWords loadWords,
    required SavePlayedWords savePlayedWords,
    required GetPlayedWords getPlayedWords,
    required ResetGameHistory resetGameHistory,
    required GetUnfinishedGame getUnfinishedGame,
  })  : _loadWords = loadWords,
        _savePlayedWords = savePlayedWords,
        _getPlayedWords = getPlayedWords,
        _resetGameHistory = resetGameHistory,
        _getUnfinishedGame = getUnfinishedGame;

  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    List<Word>? playedWords,
  }) async {
    return await _loadWords.execute(
      category: category,
      commandsCount: commandsCount,
      penaltyMode: penaltyMode,
      playedWords: playedWords,
    );
  }

  Future<Either<Failure, void>> savePlayedWords({
    required List<Word> words,
  }) async {
    return await _savePlayedWords.execute(
      words: words,
    );
  }

  Future<Either<Failure, List<Word>>> getPlayedWords({
    required Category category,
  }) async {
    return await _getPlayedWords.execute(
      category: category,
    );
  }

  Future<Either<Failure, void>> resetGameHistory() async {
    return await _resetGameHistory.execute();
  }

  Future<Either<Failure, Game?>> loadUnfinishedGame() async {
    return await _getUnfinishedGame.execute();
  }
}
