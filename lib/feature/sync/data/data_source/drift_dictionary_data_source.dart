import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: DictionaryLocalDataSource)
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
