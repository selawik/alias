import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/data_source/category_local_data_source.dart';
import 'package:alias/feature/categories/data/data_source/category_remote_data_source.dart';
import 'package:alias/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
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
      final categoriesDto = await _localDataSource.getAllCategories();

      if (categoriesDto.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      var categories = <Category>[];

      for (var categoryDto in categoriesDto) {
        var categoryWordsCount =
            await _localDataSource.getCategoryWordsCount(categoryDto.categoryId);

        var imageUrl =
            'https://s0.rbk.ru/v6_top_pics/resized/590xH/media/img/1/83/756079611261831.jpg';

        categories.add(
          _mapper.mapToModel(
            categoryDto.copyWith(
                fileUrl: imageUrl, wordsCount: categoryWordsCount),
          ),
        );
      }

      log(categories.toString());
      return Right(categories);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
