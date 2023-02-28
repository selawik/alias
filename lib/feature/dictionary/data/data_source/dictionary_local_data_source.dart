

import 'package:alias/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryLocalDataSource {
  Future<Either<Failure, void>> saveWords();
  Future<Either<Failure, void>> saveCommands();
  Future<Either<Failure, void>> saveCategories();
}