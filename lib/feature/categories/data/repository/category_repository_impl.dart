import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource dataSource;

  CategoryRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<Category>>> loadCategories() async {
    try {
      final categoriesDto = await dataSource.getAllCategories();

      if (categoriesDto.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      var categories = <Category>[];

      for (var categoryDto in categoriesDto) {
        var categoryWordsCount =
            await dataSource.getCategoryWordsCount(categoryDto.categoryId);

        var imageUrl = await FirebaseStorage.instance
            .ref()
            .child(categoryDto.fileName)
            .getDownloadURL();

        categories.add(Category(
            categoryId: categoryDto.categoryId,
            name: categoryDto.name,
            url: imageUrl));
      }

      log(categories.toString());

      return Right(categories);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
