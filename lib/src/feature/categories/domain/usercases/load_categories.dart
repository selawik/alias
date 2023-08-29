import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadCategories {
  final CategoryRepository repository;

  LoadCategories({required this.repository});

  Future<Either<Failure, List<Category>>> execute() async {
    return repository.loadCategories();
  }
}
