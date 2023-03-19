import 'package:alias/feature/categories/data/models/category_dto.dart';

abstract class DictionaryLocalDataSource {
  Future<void> saveWords();
  Future<void> saveCommands();
  Future<void> saveCategories({required List<CategoryDto> categories});
  Future<int?> getLastCategoryId();

  Future<int?> getLastWordId();
}