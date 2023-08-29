import 'package:drift/drift.dart';

@DataClassName('CategoryDbEntity')
class CategoryTable extends Table {
  IntColumn get categoryId => integer()();
  TextColumn get name => text()();
}
