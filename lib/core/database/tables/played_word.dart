import 'package:drift/drift.dart';

@DataClassName('PlayedWords')
class PlayedWord extends Table {
  IntColumn get playedWordId => integer().unique()();

  TextColumn get name => text()();
}