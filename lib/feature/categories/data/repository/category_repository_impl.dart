import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource dataSource;

  CategoryRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<Category>>> loadCategories() async {
    try {
      final result = await dataSource.getAllCategories();

      if (result.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      return Right(result);
    } catch (e) {
      return const Left(ServerFailure('Error'));
    }
  }
}
