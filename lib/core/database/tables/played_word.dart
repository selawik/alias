import 'package:drift/drift.dart';

@DataClassName('PlayedWords')
class PlayedWord extends Table {
  IntColumn get playedWordId => integer().autoIncrement()();

  TextColumn get name => text()();
}