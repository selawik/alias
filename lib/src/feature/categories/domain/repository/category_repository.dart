import 'package:alias/src/feature/categories/domain/models/category.dart';

abstract interface class ICategoryRepository {
  Future<List<Category>> loadCategories();
}
