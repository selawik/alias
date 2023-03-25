import 'package:alias/feature/categories/data/models/category_dto.dart';

abstract class CategoryLocalDataSource {
  Future<Iterable<CategoryDto>> getAllCategories();

  Future<int> getCategoryWordsCount(int categoryId);
}
