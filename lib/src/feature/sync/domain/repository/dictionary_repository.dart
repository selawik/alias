import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/commands/domain/models/command_entity.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, Iterable<Category>>> loadCategories({
    int? startFromId,
  });

  Future<Either<Failure, Iterable<Word>>> loadWordsBatch({
    int? startFromId,
  });

  Future<Either<Failure, Iterable<CommandEntity>>> loadCommands(
      {int? startFromId});

  Future<Either<Failure, int?>> loadLastLocalCategoryId();

  Future<Either<Failure, int>> loadLastRemoteCategoryId();

  Future<Either<Failure, int?>> loadLastLocalWordId();

  Future<Either<Failure, int>> loadLastRemoteWordId();

  Future<Either<Failure, int?>> loadLastLocalCommandId();

  Future<Either<Failure, int>> loadLastRemoteCommandId();

  Future<Either<Failure, void>> saveCategories(List<Category> categories);

  Future<Either<Failure, void>> saveWords({required List<Word> words});

  Future<Either<Failure, void>> saveCommands(
      {required List<CommandEntity> commands});
}
