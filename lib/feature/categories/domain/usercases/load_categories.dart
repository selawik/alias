import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';

class LoadCategories {
  final CategoryRepository repository;

  LoadCategories({required this.repository});

  Future<Either<Failure, List<Category>>> execute() async {
    return await repository.loadCategories();
  }
}
