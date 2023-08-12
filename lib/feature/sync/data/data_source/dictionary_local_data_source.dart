import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';

abstract class DictionaryLocalDataSource {
  Future<void> saveWords({required List<WordDto> words});

  Future<void> saveCommands({required Iterable<CommandDto> commands});

  Future<void> saveCategories({required Iterable<CategoryDto> categories});

  Future<int?> loadLastCategoryId();

  Future<int?> loadLastWordId();

  Future<int?> loadLastCommandId();
}
