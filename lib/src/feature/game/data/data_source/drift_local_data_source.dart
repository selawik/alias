import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/game/data/data_source/words_local_data_source.dart';
import 'package:alias/src/feature/game/data/model/game_dto.dart';
import 'package:alias/src/feature/game/data/model/word_dto.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsLocalDataSource)
class DriftLocalDataSource implements WordsLocalDataSource {
  final DbProvider _dbProvider;

  DriftLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<void> savePlayedWords({required List<Word> words}) async {
    await _dbProvider.insertPlayedWords(playedWords: words);
  }

  @override
  Future<void> saveStartedGame({required GameDto game}) async {
    await _dbProvider.saveStartedGame(gameDto: game);
  }

  @override
  Future<void> resetGameHistory() async {
    return _dbProvider.resetGameHistory();
  }

  @override
  Future<void> resetUnfinishedGame() async {
    await _dbProvider.resetUnfinishedGame();
  }

  @override
  Future<Iterable<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  }) async {
    return _dbProvider.loadWords(
      categoryId: categoryId,
      limit: limit,
      playedIds: playedIds,
    );
  }

  @override
  Future<GameDto?> loadUnfinishedGame() async {
    final game = await _dbProvider.loadUnfinishedGame();

    if (game != null) {
      return GameDto(
        nextPlayingCommandId: game.nextPlayingCommandId,
        lastWordMode: game.lastWordEnabled,
        penaltyMode: game.penaltyEnabled,
        moveTime: game.moveDuration,
        categoryId: game.categoryId,
      );
    }

    return null;
  }

  @override
  Future<List<Word>> loadPlayedWords({required Category category}) async {
    return _dbProvider.loadPlayedWords(category: category);
  }
}
