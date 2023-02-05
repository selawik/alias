import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game/domain/usecases/get_played_words.dart';
import 'package:alias/feature/game/domain/usecases/load_words.dart';
import 'package:alias/feature/game/domain/usecases/save_played_words.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class WordsUseCasesFacade {
  final LoadWords _loadWords;
  final SavePlayedWords _savePlayedWords;
  final GetPlayedWords _getPlayedWords;

  WordsUseCasesFacade({
    required LoadWords loadWords,
    required SavePlayedWords savePlayedWords,
    required GetPlayedWords getPlayedWords,
  })  : _loadWords = loadWords,
        _savePlayedWords = savePlayedWords,
        _getPlayedWords = getPlayedWords;

  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
  }) async {
    return await _loadWords.execute(
      category: category,
      commandsCount: commandsCount,
      penaltyMode: penaltyMode,
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
}
