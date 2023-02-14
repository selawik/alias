import 'package:alias/core/database/database.dart' hide Category;
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:injectable/injectable.dart';

@singleton
class DbProvider {
  final Database _db;

  DbProvider({
    required Database db,
  }) : _db = db;

  Future<void> insertPlayedWords({required List<Word> playedWords}) async {
    for (var word in playedWords) {
      await _db.playedWordDao.setPlayedWords(
        PlayedWordCompanion.insert(
          playedWordId: word.wordId,
          name: word.name,
          categoryId: word.categoryId,
        ),
      );
    }
  }

  Future<List<Word>> getPlayedWords({required Category category}) async {
    return (await _db.playedWordDao.getPlayedWordsOfCategory(category))
        .map((e) => Word(
              wordId: e.playedWordId,
              name: e.name,
              categoryId: e.categoryId,
            ))
        .toList();
  }

  Future<void> resetGameHistory() async {
    await _db.playedWordDao.deleteWords();
  }

  Future<void> resetUnfinishedGame() async {
    await _db.gameDao.deleteUnfinishedGame();
  }

  Future<Game?> getUnfinishedGame() async {
    return await _db.gameDao.getUnfinishedGame();
  }

  Future<void> saveStartedGame({required GameDto gameDto}) async {
    return await _db.gameDao.saveStartedGame(
      GameTableCompanion.insert(
        nextPlayingCommandId: gameDto.nextPlayingCommandId,
        categoryId: gameDto.categoryId,
        lastWordEnabled: gameDto.lastWordMode,
        penaltyEnabled: gameDto.penaltyMode,
        moveDuration: gameDto.moveTime,
      ),
    );
  }
}
