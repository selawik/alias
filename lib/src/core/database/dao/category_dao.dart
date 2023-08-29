import 'package:alias/src/core/database/database.dart';
import 'package:alias/src/core/database/tables/category.dart';
import 'package:drift/drift.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [CategoryTable])
class CategoryDao extends DatabaseAccessor<Database> with _$CategoryDaoMixin {
  CategoryDao(Database db) : super(db);

  Future<int?> getLastCategoryId() async {
    final query = select(categoryTable)
      ..orderBy([(table) => OrderingTerm(expression: table.categoryId)]);

    final categories = await query.get();

    if (categories.isEmpty) {
      return null;
    }

    return categories.last.categoryId;
  }

  Future<void> saveCategories(List<CategoryTableCompanion> categories) async {
    await batch((batch) => batch.insertAll(categoryTable, categories));
  }

  Future<Iterable<CategoryDbEntity>> getCategories() async {
    final query = select(categoryTable);

    return query.get();
  }
}
