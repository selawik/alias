import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DictionaryLocalDataSource)
class DriftDictionaryDataSource implements DictionaryLocalDataSource {
  final DbProvider _dbProvider;

  DriftDictionaryDataSource(DbProvider dbProvider) : _dbProvider = dbProvider;

  @override
  Future<void> saveWords() {
    // TODO: implement saveWords
    throw UnimplementedError();
  }

  @override
  Future<void> saveCategories({required List<CategoryDto> categories}) async {
    return await _dbProvider.saveCategories(categories);
  }

  @override
  Future<void> saveCommands() {
    // TODO: implement saveCommands
    throw UnimplementedError();
  }

  @override
  Future<int?> getLastCategoryId() async {
    return await _dbProvider.getLastCategoryId();
  }
}
