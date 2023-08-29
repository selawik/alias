import 'dart:developer';

import 'package:alias/src/core/database/database.dart';
import 'package:alias/src/feature/categories/data/models/category_dto.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/commands/data/models/command_dto.dart';
import 'package:alias/src/feature/game/data/model/game_dto.dart';
import 'package:alias/src/feature/game/data/model/word_dto.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:injectable/injectable.dart';

@singleton
class DbProvider {
  final Database _db;

  DbProvider({
    required Database db,
  }) : _db = db;

  Future<void> insertPlayedWords({required List<Word> playedWords}) async {
    for (final word in playedWords) {
      await _db.playedWordDao.setPlayedWords(
        PlayedWordCompanion.insert(
          playedWordId: word.wordId,
          name: word.name,
          categoryId: word.categoryId,
        ),
      );
    }
  }

  Future<void> resetGameHistory() async {
    await _db.playedWordDao.deleteWords();
  }

  Future<void> resetUnfinishedGame() async {
    await _db.gameDao.deleteUnfinishedGame();
  }

  Future<void> saveStartedGame({required GameDto gameDto}) async {
    return _db.gameDao.saveStartedGame(
      GameTableCompanion.insert(
        nextPlayingCommandId: gameDto.nextPlayingCommandId,
        categoryId: gameDto.categoryId,
        lastWordEnabled: gameDto.lastWordMode,
        penaltyEnabled: gameDto.penaltyMode,
        moveDuration: gameDto.moveTime,
      ),
    );
  }

  Future<void> saveCategories(Iterable<CategoryDto> categories) async {
    final categoryCompanions = categories.map(
      (category) => CategoryTableCompanion.insert(
        categoryId: category.categoryId,
        name: category.name,
      ),
    );

    return _db.categoryDao.saveCategories(categoryCompanions.toList());
  }

  Future<void> saveWords({required List<WordDto> words}) async {
    final wordCompanions = words.map(
      (word) => WordsTableCompanion.insert(
        wordId: word.wordId,
        categoryId: word.categoryId,
        name: word.name,
      ),
    );

    return _db.wordDao.saveWords(words: wordCompanions.toList());
  }

  Future<void> saveCommands(Iterable<CommandDto> commands) async {
    final commandCompanions = commands.map(
      (category) => CommandTableCompanion.insert(
        commandId: category.commandId,
        name: category.name,
      ),
    );

    return _db.commandDao.saveCommands(commandCompanions);
  }

  Future<int?> loadLastCategoryId() async {
    return _db.categoryDao.getLastCategoryId();
  }

  Future<int?> loadLastWordId() async {
    return _db.wordDao.getLastWordId();
  }

  Future<int?> loadLastCommandId() async {
    return _db.commandDao.getLastCommandId();
  }

  Future<Iterable<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  }) async {
    final wordDbEntities = await _db.wordDao
        .getWords(categoryId: categoryId, limit: limit, playedIds: playedIds);

    log(wordDbEntities.toString());

    return wordDbEntities.map(
      (e) => WordDto(wordId: e.wordId, name: e.name, categoryId: e.categoryId),
    );
  }

  Future<Iterable<CategoryDto>> loadCategories() async {
    final categoryEntities = await _db.categoryDao.getCategories();

    return categoryEntities.map((categoryEntity) => CategoryDto(
        categoryId: categoryEntity.categoryId, name: categoryEntity.name));
  }

  Future<Iterable<CommandDto>> loadCommands() async {
    final commandEntities = await _db.commandDao.getCommands();

    return commandEntities.map(
      (commandEntity) => CommandDto(
        commandId: commandEntity.commandId,
        name: commandEntity.name,
      ),
    );
  }

  Future<int> loadCategoryWordsCount({required int categoryId}) async {
    return _db.wordDao.getCategoryWordsCount(categoryId: categoryId);
  }

  Future<List<Word>> loadPlayedWords({required Category category}) async {
    return (await _db.playedWordDao.getPlayedWordsOfCategory(category))
        .map((e) => Word(
              wordId: e.playedWordId,
              name: e.name,
              categoryId: e.categoryId,
            ))
        .toList();
  }

  Future<GameDbEntity?> loadUnfinishedGame() async {
    return _db.gameDao.getUnfinishedGame();
  }
}
