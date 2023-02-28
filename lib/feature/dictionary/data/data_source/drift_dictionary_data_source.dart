import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/dictionary/data/data_source/dictionary_local_data_source.dart';
import 'package:dartz/dartz.dart';

class DriftDictionaryDataSource implements DictionaryLocalDataSource {
  @override
  Future<Either<Failure, void>> saveWords() {
    // TODO: implement saveWords
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> saveCategories() {
    // TODO: implement saveCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> saveCommands() {
    // TODO: implement saveCommands
    throw UnimplementedError();
  }
}
