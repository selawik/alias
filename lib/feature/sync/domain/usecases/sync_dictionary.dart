import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SyncDictionary {
  final DictionaryRepository _repository;

  SyncDictionary({required DictionaryRepository repository})
      : _repository = repository;

  Future<Either<Failure, bool?>> execute() async {
    var lastLocalCategoryIdResult = await _repository.getLastLocalCategoryId();

    if (lastLocalCategoryIdResult.isLeft()) {
      return Left((lastLocalCategoryIdResult as Left).value);
    }

    var lastLocalCategoryId = (lastLocalCategoryIdResult as Right).value;

    log('Last local category Id $lastLocalCategoryId');

    var categoriesResult = await _repository.loadCategories();

    var lastRemoteCategoryResult = await _repository.getLastRemoveCategoryId();

    if (lastRemoteCategoryResult.isLeft()) {
      return Left((lastRemoteCategoryResult as Left).value);
    }

    var lastRemoteCategoryId = (lastRemoteCategoryResult as Right).value;
    log('Last remote category Id $lastRemoteCategoryId');



    if (categoriesResult.isLeft()) {
      return Left((categoriesResult as Left).value);
    }

    log(categoriesResult.getOrElse(() => []).toString());

    return const Right(false);
  }
}