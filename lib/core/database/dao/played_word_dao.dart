import 'dart:developer';

import 'package:alias/core/database/database.dart' hide Category;
import 'package:alias/core/database/tables/played_word.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:drift/drift.dart';

part 'played_word_dao.g.dart';

@DriftAccessor(tables: [PlayedWord])
class PlayedWordDao extends DatabaseAccessor<Database>
    with _$PlayedWordDaoMixin {
  PlayedWordDao(Database db) : super(db);

  Future<List<PlayedWords>> getPlayedWordsOfCategory(Category category) async {
    return await (select(playedWord)
          ..where((tbl) => tbl.categoryId.equals(category.categoryId)))
        .get();
  }

  Future<int> setPlayedWords(PlayedWordCompanion entity) async {
    var result = await into(playedWord).insert(entity, mode: InsertMode.replace);
    log(entity.toString());
    log('insert $result');
    return result;
  }

  Future<void> deleteWords() async {
    delete(playedWord).go();
  }
}
