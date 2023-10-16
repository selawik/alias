import 'package:alias/src/feature/categories/data/data_source/category_local_data_source.dart';
import 'package:alias/src/feature/categories/data/data_source/category_remote_data_source.dart';
import 'package:alias/src/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:injectable/injectable.dart';

abstract interface class ICategoryRepository {
  Future<List<CategoryEntity>> loadCategories();
}

@Injectable(as: ICategoryRepository)
class CategoryRepositoryImpl implements ICategoryRepository {
  final CategoryRemoteDataSource _remoteDataSource;
  final CategoryLocalDataSource _localDataSource;
  final CategoryMapper _mapper;

  CategoryRepositoryImpl({
    required CategoryRemoteDataSource remoteDataSource,
    required CategoryLocalDataSource localDataSource,
    required CategoryMapper mapper,
  })  : _mapper = mapper,
        _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<List<CategoryEntity>> loadCategories() async {
    final categoriesDto = await _localDataSource.loadAllCategories();

    final categories = <CategoryEntity>[];

    for (final categoryDto in categoriesDto) {
      final categoryWordsCount =
          await _localDataSource.loadCategoryWordsCount(categoryDto.categoryId);

      categories.add(
        _mapper.mapToEntity(
          categoryDto.copyWith(
            wordsCount: categoryWordsCount,
          ),
        ),
      );
    }

    return categories;
  }
}
