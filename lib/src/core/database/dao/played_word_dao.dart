import 'dart:developer';

import 'package:alias/src/core/database/database.dart';
import 'package:alias/src/core/database/tables/played_word.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:drift/drift.dart';

part 'played_word_dao.g.dart';

@DriftAccessor(tables: [PlayedWord])
class PlayedWordDao extends DatabaseAccessor<Database>
    with _$PlayedWordDaoMixin {
  PlayedWordDao(Database db) : super(db);

  Future<List<PlayedWordsDbEntity>> getPlayedWordsOfCategory(
      Category category) async {
    return (select(playedWord)
          ..where((tbl) => tbl.categoryId.equals(category.categoryId)))
        .get();
  }

  Future<int> setPlayedWords(PlayedWordCompanion entity) async {
    final result =
        await into(playedWord).insert(entity, mode: InsertMode.replace);
    log(entity.toString());
    log('insert $result');
    return result;
  }

  Future<void> deleteWords() async {
    await delete(playedWord).go();
  }
}
