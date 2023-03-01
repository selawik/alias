

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, bool>> loadDictionary();
  Future<Either<Failure, List<Category>>> loadCategories();
  Future<Either<Failure, int>> getLastLocalCategoryId();
}