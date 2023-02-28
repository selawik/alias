import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:dartz/dartz.dart';

import 'package:alias/feature/commands/data/models/command.dart';

abstract class DictionaryRemoteDataSource {
  Future<Either<Failure, List<WordDto>>> loadWords();
  Future<Either<Failure, List<CategoryDto>>> loadCategories();
  Future<Either<Failure, List<Command>>> loadCommands();
}