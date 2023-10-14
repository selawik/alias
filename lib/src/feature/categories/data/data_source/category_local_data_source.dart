import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:injectable/injectable.dart';

abstract interface class CategoryLocalDataSource {
  Future<Iterable<CategoryDto>> loadAllCategories();

  Future<int> loadCategoryWordsCount(int categoryId);
}

@Injectable(as: CategoryLocalDataSource)
class DriftCategoryDataSource implements CategoryLocalDataSource {
  final DbProvider _dbProvider;

  DriftCategoryDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<Iterable<CategoryDto>> loadAllCategories() async {
    return _dbProvider.loadCategories();
  }

  @override
  Future<int> loadCategoryWordsCount(int categoryId) async {
    return _dbProvider.loadCategoryWordsCount(categoryId: categoryId);
  }
}
