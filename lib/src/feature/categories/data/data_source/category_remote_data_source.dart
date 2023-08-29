import 'package:alias/src/feature/categories/data/models/category_dto.dart';

abstract interface class CategoryRemoteDataSource {
  Future<List<CategoryDto>> getAllCategories();
  Future<int> getCategoryWordsCount(int categoryId);
}
