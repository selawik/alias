import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:injectable/injectable.dart';

abstract interface class DictionaryLocalDataSource {
  Future<void> saveWords({required List<WordDto> words});

  Future<void> saveCommands({required Iterable<CommandDto> commands});

  Future<void> saveCategories({required Iterable<CategoryDto> categories});

  Future<int?> loadLastCategoryId();

  Future<int?> loadLastWordId();

  Future<int?> loadLastCommandId();
}

@Injectable(as: DictionaryLocalDataSource)
class DriftDictionaryDataSource implements DictionaryLocalDataSource {
  final DbProvider _dbProvider;

  DriftDictionaryDataSource(DbProvider dbProvider) : _dbProvider = dbProvider;

  @override
  Future<void> saveWords({required List<WordDto> words}) async {
    return _dbProvider.saveWords(words: words);
  }

  @override
  Future<void> saveCategories({
    required Iterable<CategoryDto> categories,
  }) async {
    return _dbProvider.saveCategories(categories);
  }

  @override
  Future<void> saveCommands({required Iterable<CommandDto> commands}) async {
    return _dbProvider.saveCommands(commands);
  }

  @override
  Future<int?> loadLastCategoryId() async {
    return _dbProvider.loadLastCategoryId();
  }

  @override
  Future<int?> loadLastWordId() async {
    return _dbProvider.loadLastWordId();
  }

  @override
  Future<int?> loadLastCommandId() async {
    return _dbProvider.loadLastCommandId();
  }
}
