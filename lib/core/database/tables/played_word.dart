import 'package:drift/drift.dart';

@DataClassName('PlayedWords')
class PlayedWord extends Table {
  IntColumn get playedWordId => integer().unique()();
  IntColumn get categoryId => integer()();

  TextColumn get name => text()();
}