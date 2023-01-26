import 'package:drift/drift.dart';

@DataClassName('Category')
class CategoriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}
