import 'package:alias/feature/categories/data/models/category_dto.dart';

abstract class CategoryLocalDataSource {
  Future<Iterable<CategoryDto>> loadAllCategories();

  Future<int> loadCategoryWordsCount(int categoryId);
}
