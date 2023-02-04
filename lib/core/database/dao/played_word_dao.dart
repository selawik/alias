import 'package:alias/core/database/database.dart';
import 'package:alias/core/database/tables/played_word.dart';
import 'package:drift/drift.dart';

part 'played_word_dao.g.dart';

@DriftAccessor(tables: [PlayedWord])
class PlayedWordDao extends DatabaseAccessor<MyDatabase> with _$PlayedWordDaoMixin {
  PlayedWordDao(MyDatabase db) : super(db);

  Future<List<PlayedWords>> getPlayedWordsOfCategory(Category category) async  {
    return [];
  }
}