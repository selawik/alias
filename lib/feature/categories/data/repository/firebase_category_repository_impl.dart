import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class FirebaseCategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource dataSource;

  FirebaseCategoryRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<Category>>> loadCategories() async {
    try {
      final result = await dataSource.getAllCategories();

      if (result.isEmpty) {
        return const Left(NoDataFailure('There is no categories'));
      }

      var categories = result.map(
        (category) async {
          var imageUrl = await FirebaseStorage.instance
              .ref()
              .child(category.fileName)
              .getDownloadURL();
          return category.copyWith(fileName: imageUrl);
        },
      ).toList();

      return Right(await Future.wait(categories));
    } catch (e, stacktrace) {
      print(e.toString());
      print(stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
