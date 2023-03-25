import 'package:alias/core/database/database.dart';
import 'package:alias/core/database/tables/words.dart';
import 'package:drift/drift.dart';

part 'word_dao.g.dart';

@DriftAccessor(tables: [WordsTable])
class WordDao extends DatabaseAccessor<Database> with _$WordDaoMixin {
  WordDao(Database db) : super(db);

  Future<int?> getLastWordId() async {
    var query = select(wordsTable)
      ..orderBy([(table) => OrderingTerm(expression: table.wordId)]);

    var words = await query.get();

    if (words.isEmpty) {
      return null;
    }

    return words.last.wordId;
  }

  Future<void> saveWords({required List<WordsTableCompanion> words}) async {
    await batch((batch) => batch.insertAll(wordsTable, words));
  }

  Future<Iterable<WordDbEntity>> getWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  }) async {
    return (select(wordsTable)
          ..where(
            (tbl) =>
                tbl.wordId.isNotIn(playedIds ?? []) &
                tbl.categoryId.equals(categoryId),
          )
          ..limit(limit))
        .get();
  }

  Future<int> getCategoryWordsCount({required int categoryId}) async {
    var query = select(wordsTable)
      ..where((tbl) => tbl.categoryId.equals(categoryId));

    return (await query.get()).length;
  }
}
