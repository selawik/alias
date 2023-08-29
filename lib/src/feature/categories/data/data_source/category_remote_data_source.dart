import 'package:alias/src/feature/categories/data/models/category_dto.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryDto>> getAllCategories();
  Future<int> getCategoryWordsCount(int categoryId);
}
