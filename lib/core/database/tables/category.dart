import 'package:drift/drift.dart';

@DataClassName('Category')
class CategoryTable extends Table {
  IntColumn get categoryId => integer()();
  TextColumn get name => text()();
}
