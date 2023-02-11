import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource _dataSource;
  final CategoryMapper _mapper;

  CategoryRepositoryImpl({
    required CategoryDataSource dataSource,
    required CategoryMapper mapper,
  })  : _mapper = mapper,
        _dataSource = dataSource;

  @override
  Future<Either<Failure, List<Category>>> loadCategories() async {
    try {
      final categoriesDto = await _dataSource.getAllCategories();

      if (categoriesDto.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      var categories = <Category>[];

      for (var categoryDto in categoriesDto) {
        var categoryWordsCount =
            await _dataSource.getCategoryWordsCount(categoryDto.categoryId);

        var imageUrl = await FirebaseStorage.instance
            .ref()
            .child(categoryDto.fileName)
            .getDownloadURL();

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
