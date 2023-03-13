import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_remote_data_source.dart';
import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DictionaryRepository)
class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource _localDataSource;
  final DictionaryRemoteDataSource _remoteDataSource;
  final CategoryMapper _categoryMapper;

  DictionaryRepositoryImpl(
    DictionaryRemoteDataSource remoteDataSource,
    DictionaryLocalDataSource localDataSource,
    CategoryMapper categoryMapper,
  )   : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _categoryMapper = categoryMapper;

  @override
  Future<Either<Failure, bool>> loadDictionary() async {
    return Right(false);
  }

  @override
  Future<Either<Failure, int?>> getLastLocalCategoryId() async {
    try {
      var lastCategoryId = await _localDataSource.getLastCategoryId();

      return Right(lastCategoryId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading category'));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> loadCategories({int? startFromId}) async {
    try {
      var categoryDtos = await _remoteDataSource.loadCategories(startFromId: startFromId);

      return Right(
          categoryDtos.map((dto) => _categoryMapper.mapToModel(dto)).toList());
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading categories'));
    }
  }

  @override
  Future<Either<Failure, int>> getLastRemoveCategoryId() async {
    try {
      var categoryDto = await _remoteDataSource.loadLastCategory();

      return Right(categoryDto.categoryId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last category'));
    }
  }
}
