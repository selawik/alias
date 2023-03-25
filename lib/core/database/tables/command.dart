import 'package:drift/drift.dart';

@DataClassName('CommandDbEntity')
class CommandTable extends Table {
  IntColumn get commandId => integer()();
  TextColumn get name => text()();
}
