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
    var lastRemoteCategoryResult = await _repository.getLastRemoveCategoryId();

    if (lastRemoteCategoryResult.isLeft()) {
      return Left((lastRemoteCategoryResult as Left).value);
    }

    var lastRemoteCategoryId = (lastRemoteCategoryResult as Right).value;

    if (lastLocalCategoryId != lastRemoteCategoryResult) {
      _syncCategories(
        lastRemoveCategoryId: lastRemoteCategoryId,
        lastLocalCategoryId: lastLocalCategoryId,
      );
    }

    return const Right(false);
  }

  void _syncCategories({
    required int? lastLocalCategoryId,
    required int lastRemoveCategoryId,
  }) async {

    var categoriesResult = await _repository.loadCategories(startFromId: 2);



    log('categ ${categoriesResult.getOrElse(() => []).toString()}');
  }
}
