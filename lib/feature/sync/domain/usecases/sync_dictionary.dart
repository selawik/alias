import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/model/word.dart';
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

    if (lastRemoteWordResult.isLeft() || lastLocalWordResult.isLeft()) {
      return;
    }

    int lastRemoteWordId = (lastRemoteWordResult as Right).value;
    int? lastLocalWordId = (lastLocalWordResult as Right).value;

    log('Last local word id $lastRemoteWordId');
    log('Last remote word id $lastLocalWordId');

    if (lastRemoteWordId != lastLocalWordId) {
      await _saveWords(
        lastLocalWordId: lastLocalWordId,
        lastRemoveWordId: lastRemoteWordId,
      );
    }
  }

  Future<void> _saveWords({
    required int lastRemoveWordId,
    required int? lastLocalWordId,
  }) async {

    while (lastLocalWordId != lastRemoveWordId) {
      var wordsBatchResult = await _repository.loadWordsBatch(lastLocalWordId: lastLocalWordId);

      if (wordsBatchResult.isLeft()) {
        return;
      }

      var wordsList = (wordsBatchResult as Right).value as List<Word>;

      lastLocalWordId = wordsList.last.wordId;
    }
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
    var categoriesResult =
        await _repository.loadCategories(startFromId: lastLocalCategoryId);

    if (categoriesResult.isRight()) {
      var categorySavingResult =
          await _repository.saveCategories((categoriesResult as Right).value);

      if (categorySavingResult.isRight()) {
        log('Category Synced');
      }
    }
  }
}
