import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/dictionary/data/data_source/dictionary_remove_data_source.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:dartz/dartz.dart';

class FirebaseDictionaryDataSource implements DictionaryRemoteDataSource {
  @override
  Future<Either<Failure, List<WordDto>>> loadWords() {
    // TODO: implement loadWords
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryDto>>> loadCategories() {
    // TODO: implement loadCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Command>>> loadCommands() {
    // TODO: implement loadCommands
    throw UnimplementedError();
  }
}
