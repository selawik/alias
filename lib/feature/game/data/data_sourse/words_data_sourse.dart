import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:dartz/dartz.dart';

abstract class WordsDataSource {
  Future<Either<Failure, List<Word>>> loadWords();
}