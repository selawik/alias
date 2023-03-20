import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';

abstract class DictionaryLocalDataSource {
  Future<void> saveWords({required List<WordDto> words});

  Future<void> saveCommands();

  Future<void> saveCategories({required List<CategoryDto> categories});

  Future<int?> getLastCategoryId();

  Future<int?> getLastWordId();
}