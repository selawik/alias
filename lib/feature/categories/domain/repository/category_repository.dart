import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> loadCategories();
}
