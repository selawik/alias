import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, List<Category>>> loadCategories({int? startFromId});

  Future<Either<Failure, List<Word>>> loadWordsBatch({
    int? lastLocalWordId,
  });

  Future<Either<Failure, int?>> getLastLocalCategoryId();

  Future<Either<Failure, int>> getLastRemoteCategoryId();

  Future<Either<Failure, int?>> getLastLocalWordId();

  Future<Either<Failure, int>> getLastRemoteWordId();

  Future<Either<Failure, void>> saveCategories(List<Category> categories);

  Future<Either<Failure, void>> saveWords({required List<Word> words});
}
