import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:dartz/dartz.dart';

abstract interface class ICategoryRepository {
  Future<Either<Failure, List<Category>>> loadCategories();
}
