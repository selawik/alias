import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, Iterable<Category>>> loadCategories({
    int? startFromId,
  });

  Future<Either<Failure, Iterable<Word>>> loadWordsBatch({
    int? startFromId,
  });

  Future<Either<Failure, Iterable<Command>>> loadCommands({int? startFromId});

  Future<Either<Failure, int?>> getLastLocalCategoryId();

  Future<Either<Failure, int>> getLastRemoteCategoryId();

  Future<Either<Failure, int?>> getLastLocalWordId();

  Future<Either<Failure, int>> getLastRemoteWordId();

  Future<Either<Failure, void>> saveCategories(List<Category> categories);

  Future<Either<Failure, void>> saveWords({required List<Word> words});

  Future<Either<Failure, void>> saveCommands({required List<Command> commands});

  Future<Either<Failure, int?>> getLastLocalCommandId();

  Future<Either<Failure, int>> getLastRemoteCommandId();
}
