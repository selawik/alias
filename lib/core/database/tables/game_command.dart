

import 'package:drift/drift.dart';

@DataClassName('GameCommandDbEntity')
class GameCommandTable extends Table {
  IntColumn get gameCommandId => integer().autoIncrement()();

  TextColumn get description => text()();
}