import 'package:drift/drift.dart';

@DataClassName('WordTable')
class WordsTable extends Table {
  IntColumn get wordId => integer()();

  IntColumn get categoryId => integer()();

  TextColumn get name => text()();
}
