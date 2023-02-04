


import 'package:drift/drift.dart';

@DataClassName('Game')
class GameTable extends Table {
  IntColumn get gameId => integer().autoIncrement()();

  TextColumn get description => text()();

}