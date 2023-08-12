import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';

abstract class DictionaryRemoteDataSource {
  Future<Iterable<WordDto>> loadWords({int? startFromId});

  Future<Iterable<CategoryDto>> loadCategories({int? startFromId});

  Future<Iterable<CommandDto>> loadCommands({int? startFromId});

  Future<CategoryDto> loadLastCategory();

  Future<WordDto> loadLastWord();

  Future<CommandDto> loadLastCommand();
}
