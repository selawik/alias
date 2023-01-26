import 'package:drift/drift.dart';

@DataClassName('Word')
class WordsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
}
