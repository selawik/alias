

import 'package:alias/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class DictionaryRepository {



  Future<Either<Failure, bool>> loadDictionary();
}