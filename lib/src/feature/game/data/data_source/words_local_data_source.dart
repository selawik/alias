import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/data/dto/game_dto.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:injectable/injectable.dart';

abstract interface class WordsLocalDataSource {
  Future<void> savePlayedWords({required List<Word> words});

  Future<Iterable<Word>> loadPlayedWords({required Category category});

  Future<void> resetGameHistory();

  Future<GameDto?> loadUnfinishedGame();

  Future<void> saveStartedGame({required GameDto game});

  Future<void> resetUnfinishedGame();

  Future<Iterable<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  });
}

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
