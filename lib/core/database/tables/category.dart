import 'package:drift/drift.dart';

@DataClassName('Category')
class CategoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}
