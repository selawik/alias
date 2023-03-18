

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, bool>> loadDictionary();
  Future<Either<Failure, List<Category>>> loadCategories({int? startFromId});
  Future<Either<Failure, int?>> getLastLocalCategoryId();
  Future<Either<Failure, int>> getLastRemoteCategoryId();
  Future<Either<Failure, void>> saveCategories(List<Category> categories);
}