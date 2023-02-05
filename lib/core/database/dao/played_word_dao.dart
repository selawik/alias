import 'dart:developer';

import 'package:alias/core/database/database.dart';
import 'package:alias/core/database/tables/played_word.dart';
import 'package:drift/drift.dart';

part 'played_word_dao.g.dart';

@DriftAccessor(tables: [PlayedWord])
class PlayedWordDao extends DatabaseAccessor<Database> with _$PlayedWordDaoMixin {
  PlayedWordDao(Database db) : super(db);

  Future<List<PlayedWords>> getPlayedWordsOfCategory(Category category) async  {
    return [];
  }

  Future<int> setPlayedWords(PlayedWordCompanion entity) async  {
    log(entity.toString());
    return into(playedWord).insert(entity);
  }
}