import 'dart:developer';

import 'package:alias/core/database/database.dart' hide Category, Word;
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
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

  Future<GameDbEntity?> getUnfinishedGame() async {
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

  Future<int?> getLastCategoryId() async {
    return await _db.categoryDao.getLastCategoryId();
  }

  Future<int?> getLastWordId() async {
    return await _db.wordDao.getLastWordId();
  }

  Future<int?> getLastCommandId() async {
    return await _db.commandDao.getLastCommandId();
  }

  Future<void> saveCategories(Iterable<CategoryDto> categories) async {
    var categoryCompanions = categories.map(
      (category) => CategoryTableCompanion.insert(
        categoryId: category.categoryId,
        name: category.name,
      ),
    );

    return await _db.categoryDao.saveCategories(categoryCompanions.toList());
  }

  Future<void> saveWords({required List<WordDto> words}) async {
    var wordCompanions = words.map(
      (word) => WordsTableCompanion.insert(
        wordId: word.wordId,
        categoryId: word.categoryId,
        name: word.name,
      ),
    );

    return await _db.wordDao.saveWords(words: wordCompanions.toList());
  }

  Future<void> saveCommands(Iterable<CommandDto> commands) async {
    var commandCompanions = commands.map(
      (category) => CommandTableCompanion.insert(
        commandId: category.commandId,
        name: category.name,
      ),
    );

    return await _db.commandDao.saveCommands(commandCompanions);
  }

  Future<Iterable<WordDto>> getWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  }) async {
    var wordDbEntities = await _db.wordDao
        .getWords(categoryId: categoryId, limit: limit, playedIds: playedIds);

    log(wordDbEntities.toString());

    return wordDbEntities.map(
      (e) => WordDto(wordId: e.wordId, name: e.name, categoryId: e.categoryId),
    );
  }

  Future<Iterable<CategoryDto>> loadCategories() async {
    var categoryEntities = await _db.categoryDao.getCategories();

    return categoryEntities.map((wordEntity) =>
        CategoryDto(categoryId: wordEntity.categoryId, name: wordEntity.name));
  }

  Future<int> getCategoryWordsCount({required int categoryId}) async {
    return await _db.wordDao.getCategoryWordsCount(categoryId: categoryId);
  }
}
