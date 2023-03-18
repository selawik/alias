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
    var lastRemoteCategoryResult = await _repository.getLastRemoteCategoryId();

    if (lastRemoteCategoryResult.isLeft()) {
      return Left((lastRemoteCategoryResult as Left).value);
    }

    var lastRemoteCategoryId = (lastRemoteCategoryResult as Right).value;

    log('Last local category id $lastLocalCategoryId');
    log('Last remote category id $lastRemoteCategoryId');

    if (lastLocalCategoryId != lastRemoteCategoryId) {
      await _syncCategories(
        lastRemoveCategoryId: lastRemoteCategoryId,
        lastLocalCategoryId: lastLocalCategoryId,
      );
    }

    return const Right(false);
  }

  Future<void> _syncCategories({
    required int? lastLocalCategoryId,
    required int lastRemoveCategoryId,
  }) async {
    var categoriesResult = await _repository.loadCategories(startFromId: lastLocalCategoryId);

    if (categoriesResult.isRight()) {
      await _repository.saveCategories((categoriesResult as Right).value);
    }
  }
}
