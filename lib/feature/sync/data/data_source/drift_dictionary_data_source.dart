import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:injectable/injectable.dart';

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
