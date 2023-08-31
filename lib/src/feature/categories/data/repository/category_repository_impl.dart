import 'dart:developer';

import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/data/data_source/category_local_data_source.dart';
import 'package:alias/src/feature/categories/data/data_source/category_remote_data_source.dart';
import 'package:alias/src/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

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
  Future<Either<Failure, List<Category>>> loadCategories() async {
    try {
      final categoriesDto = await _localDataSource.loadAllCategories();

      if (categoriesDto.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      final categories = <Category>[];

      for (final categoryDto in categoriesDto) {
        final categoryWordsCount = await _localDataSource
            .loadCategoryWordsCount(categoryDto.categoryId);

        categories.add(
          _mapper.mapToModel(
            categoryDto.copyWith(
              wordsCount: categoryWordsCount,
            ),
          ),
        );
      }

      log(categories.toString());
      return Right(categories);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
