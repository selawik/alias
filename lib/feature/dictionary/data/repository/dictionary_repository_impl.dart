

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/dictionary/domain/repository/dictionary_repository.dart';
import 'package:dartz/dartz.dart';

class DictionaryRepositoryImpl implements DictionaryRepository{
  @override
  Future<Either<Failure, bool>> loadDictionary() {
    // TODO: implement loadDictionary
    throw UnimplementedError();
  }

}