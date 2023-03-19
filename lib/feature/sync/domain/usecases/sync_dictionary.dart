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
    await _syncCategories();
    await _syncWords();

    return const Right(false);
  }

  Future<void> _syncWords() async {
    var lastLocalWordResult = await _repository.getLastLocalWordId();
    var lastRemoteWordResult = await _repository.getLastRemoteWordId();


    log(lastLocalWordResult.toString());
    log(lastRemoteWordResult.toString());
  }

  Future<void> _syncCategories() async {
    var lastLocalCategoryIdResult = await _repository.getLastLocalCategoryId();

    if (lastLocalCategoryIdResult.isLeft()) {
      return;
    }

    var lastLocalCategoryId = (lastLocalCategoryIdResult as Right).value;
    var lastRemoteCategoryResult = await _repository.getLastRemoteCategoryId();

    if (lastRemoteCategoryResult.isLeft()) {
      return;
    }

    var lastRemoteCategoryId = (lastRemoteCategoryResult as Right).value;

    log('Last local category id $lastLocalCategoryId');
    log('Last remote category id $lastRemoteCategoryId');

    if (lastLocalCategoryId != lastRemoteCategoryId) {
      await _saveCategories(
        lastRemoveCategoryId: lastRemoteCategoryId,
        lastLocalCategoryId: lastLocalCategoryId,
      );
    }
  }

  Future<void> _saveCategories({
    required int? lastLocalCategoryId,
    required int lastRemoveCategoryId,
  }) async {
    var categoriesResult = await _repository.loadCategories(startFromId: lastLocalCategoryId);

    if (categoriesResult.isRight()) {
      var categorySavingResult = await _repository.saveCategories((categoriesResult as Right).value);

      if (categorySavingResult.isRight()) {
        log('Category Synced');
      }
    }
  }
}
