import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/data/data_source/words_local_data_source.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsLocalDataSource)
class DriftLocalDataSource implements WordsLocalDataSource {
  final DbProvider _dbProvider;

  DriftLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<void> setPlayedWords({required List<Word> words}) async {
    await _dbProvider.insertPlayedWords(playedWords: words);
  }

  @override
  Future<List<Word>> getPlayedWords({required Category category}) async {
    return await _dbProvider.getPlayedWords(category: category);
  }

  @override
  Future<void> resetGameHistory() async {
    return await _dbProvider.resetGameHistory();
  }

  @override
  Future<GameDto?> getUnfinishedGame() async {
    var game = await _dbProvider.getUnfinishedGame();

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
  Future<void> saveStartedGame({required GameDto game}) async {
    await _dbProvider.saveStartedGame(gameDto: game);
  }

  @override
  Future<void> resetUnfinishedGame() async {
    await _dbProvider.resetUnfinishedGame();
  }
}
