
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


  Future<void> saveWords(List<CategoryTableCompanion> categories) async {
    // await batch((batch) => batch.insertAll(categoryTable, categories));
  }
}