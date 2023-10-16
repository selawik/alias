import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/sync/data/data_source/mapper/dictionary_mapper_facade.dart';
import 'package:injectable/injectable.dart';

abstract interface class DictionaryLocalDataSource {
  Future<void> saveWords({required List<WordEntity> words});

  Future<void> saveCommands({required List<CommandEntity> commands});

  Future<void> saveCategories({required List<CategoryEntity> categories});

  Future<int?> loadLastCategoryId();

  Future<int?> loadLastWordId();

  Future<int?> loadLastCommandId();
}

@Injectable(as: DictionaryLocalDataSource)
class DriftDictionaryDataSource implements DictionaryLocalDataSource {
  final DbProvider _dbProvider;
  final DictionaryMapperFacade _mapperFacade;

  DriftDictionaryDataSource(
    DbProvider dbProvider,
    DictionaryMapperFacade mapperFacade,
  )   : _dbProvider = dbProvider,
        _mapperFacade = mapperFacade;

  @override
  Future<void> saveWords({required List<WordEntity> words}) async {
    return _dbProvider.saveWords(words: words);
  }

  @override
  Future<void> saveCategories({
    required List<CategoryEntity> categories,
  }) async {
    return _dbProvider.saveCategories(categories);
  }

  @override
  Future<void> saveCommands({required List<CommandEntity> commands}) async {
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
