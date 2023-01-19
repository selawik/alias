import 'package:alias/feature/categories/data/models/category.dart';

abstract class CategoryDataSource {
  Future<List<Category>> getAllCategories();
}
