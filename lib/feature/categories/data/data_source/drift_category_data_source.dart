import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/categories/data/data_source/category_local_data_source.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryLocalDataSource)
class DriftCategoryDataSource implements CategoryLocalDataSource {
  final DbProvider _dbProvider;

  DriftCategoryDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<Iterable<CategoryDto>> getAllCategories() async {
    return await _dbProvider.loadCategories();
  }

  @override
  Future<int> getCategoryWordsCount(int categoryId) async {
    return await _dbProvider.getCategoryWordsCount(categoryId: categoryId);
  }
}
