import 'package:alias/src/feature/categories/data/models/category_dto.dart';

abstract interface class CategoryLocalDataSource {
  Future<Iterable<CategoryDto>> loadAllCategories();

  Future<int> loadCategoryWordsCount(int categoryId);
}
