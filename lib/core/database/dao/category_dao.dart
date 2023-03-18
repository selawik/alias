import 'dart:developer';

import 'package:alias/core/database/database.dart' hide Category;
import 'package:alias/core/database/tables/category.dart';
import 'package:drift/drift.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [CategoryTable])
class CategoryDao extends DatabaseAccessor<Database> with _$CategoryDaoMixin {
  CategoryDao(Database db) : super(db);

  Future<int?> getLastCategoryId() async {
    var query = select(categoryTable)
        ..orderBy([(table) => OrderingTerm(expression: table.categoryId)]);

    var categories = await query.get();

    if (categories.isEmpty) {
      return null;
    }

    return categories.last.categoryId;
  }


  Future<void> saveCategories(List<CategoryTableCompanion> categories) async {
    await batch((batch) => batch.insertAll(categoryTable, categories));
  }
}
