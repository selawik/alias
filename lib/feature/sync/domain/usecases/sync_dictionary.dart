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
    await _syncCommand();

    return const Right(false);
  }

  Future<void> _syncWords() async {
    var lastLocalWordResult = await _repository.loadLastLocalWordId();
    var lastRemoteWordResult = await _repository.loadLastRemoteWordId();

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

    log('Words Synced Local: $lastLocalWordId Remote: $lastRemoteWordId');
  }

  Future<void> _saveWords({
    required int lastRemoveWordId,
    required int? lastLocalWordId,
  }) async {
    while ((lastLocalWordId ?? 0) < lastRemoveWordId) {
      var wordsBatchResult =
          await _repository.loadWordsBatch(startFromId: lastLocalWordId);

      if (wordsBatchResult.isLeft()) {
        return;
      }

      var wordsList = (wordsBatchResult as Right).value as List<Word>;

      var wordsSavingResult = await _repository.saveWords(words: wordsList);

      if (wordsSavingResult.isLeft()) {
        return;
      }

      lastLocalWordId = wordsList.last.wordId;
    }
  }

  Future<void> _syncCategories() async {
    var lastLocalCategoryIdResult = await _repository.loadLastLocalCategoryId();

    if (lastLocalCategoryIdResult.isLeft()) {
      return;
    }

    var lastLocalCategoryId = (lastLocalCategoryIdResult as Right).value;
    var lastRemoteCategoryResult = await _repository.loadLastRemoteCategoryId();

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

  Future<void> _syncCommand() async {
    var lastLocalCommandIdResult = await _repository.loadLastLocalCommandId();

    if (lastLocalCommandIdResult.isLeft()) {
      return;
    }

    var lastRemoteCommandIdResult = await _repository.loadLastRemoteCommandId();

    if (lastRemoteCommandIdResult.isLeft()) {
      return;
    }

    var lastRemoteCommandId = (lastRemoteCommandIdResult as Right).value;
    var lastLocalCommandId = (lastLocalCommandIdResult as Right).value;

    log('Last local command id $lastLocalCommandId');
    log('Last remote command id $lastRemoteCommandId');

    if (lastRemoteCommandId != lastLocalCommandId) {
      await _saveCommands(
        lastLocalCommandId: lastLocalCommandId,
        lastRemoveCommandId: lastRemoteCommandId,
      );
    }
  }

  Future<void> _saveCommands({
    required int? lastLocalCommandId,
    required int lastRemoveCommandId,
  }) async {
    var commandsResult =
        await _repository.loadCommands(startFromId: lastLocalCommandId);

    if (commandsResult.isRight()) {
      var commandsSaveResult = await _repository.saveCommands(
          commands: (commandsResult as Right).value.toList());

      if (commandsSaveResult.isRight()) {
        log('Commands Synced');
      }
    }
  }
}
