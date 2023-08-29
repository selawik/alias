import 'dart:developer';

import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:alias/src/feature/sync/domain/repository/dictionary_repository.dart';
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
    final lastLocalWordResult = await _repository.loadLastLocalWordId();
    final lastRemoteWordResult = await _repository.loadLastRemoteWordId();

    if (lastRemoteWordResult.isLeft() || lastLocalWordResult.isLeft()) {
      return;
    }

    final lastRemoteWordId = (lastRemoteWordResult as Right).value;
    final lastLocalWordId = (lastLocalWordResult as Right).value;

    log('Last local word id $lastRemoteWordId');
    log('Last remote word id $lastLocalWordId');

    if (lastRemoteWordId != lastLocalWordId) {
      await _saveWords(
        lastLocalWordId: lastLocalWordId as int?,
        lastRemoveWordId: lastRemoteWordId as int,
      );
    }

    log('Words Synced Local: $lastLocalWordId Remote: $lastRemoteWordId');
  }

  Future<void> _saveWords({
    required int lastRemoveWordId,
    required int? lastLocalWordId,
  }) async {
    while ((lastLocalWordId ?? 0) < lastRemoveWordId) {
      final wordsBatchResult =
          await _repository.loadWordsBatch(startFromId: lastLocalWordId);

      if (wordsBatchResult.isLeft()) {
        return;
      }

      final wordsList = (wordsBatchResult as Right).value as List<Word>;

      final wordsSavingResult = await _repository.saveWords(words: wordsList);

      if (wordsSavingResult.isLeft()) {
        return;
      }

      lastLocalWordId = wordsList.last.wordId;
    }
  }

  Future<void> _syncCategories() async {
    final lastLocalCategoryIdResult =
        await _repository.loadLastLocalCategoryId();

    if (lastLocalCategoryIdResult.isLeft()) {
      return;
    }

    final lastLocalCategoryId = (lastLocalCategoryIdResult as Right).value;
    final lastRemoteCategoryResult =
        await _repository.loadLastRemoteCategoryId();

    if (lastRemoteCategoryResult.isLeft()) {
      return;
    }

    final lastRemoteCategoryId = (lastRemoteCategoryResult as Right).value;

    log('Last local category id $lastLocalCategoryId');
    log('Last remote category id $lastRemoteCategoryId');

    if (lastLocalCategoryId != lastRemoteCategoryId) {
      await _saveCategories(
        lastRemoveCategoryId: lastRemoteCategoryId as int,
        lastLocalCategoryId: lastLocalCategoryId as int?,
      );
    }
  }

  Future<void> _saveCategories({
    required int? lastLocalCategoryId,
    required int lastRemoveCategoryId,
  }) async {
    final categoriesResult =
        await _repository.loadCategories(startFromId: lastLocalCategoryId);

    if (categoriesResult.isRight()) {
      final categorySavingResult = await _repository
          .saveCategories((categoriesResult as Right).value as List<Category>);

      if (categorySavingResult.isRight()) {
        log('Category Synced');
      }
    }
  }

  Future<void> _syncCommand() async {
    final lastLocalCommandIdResult = await _repository.loadLastLocalCommandId();

    if (lastLocalCommandIdResult.isLeft()) {
      return;
    }

    final lastRemoteCommandIdResult =
        await _repository.loadLastRemoteCommandId();

    if (lastRemoteCommandIdResult.isLeft()) {
      return;
    }

    final lastRemoteCommandId =
        (lastRemoteCommandIdResult as Right).value as int;
    final lastLocalCommandId =
        (lastLocalCommandIdResult as Right).value as int?;

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
    final commandsResult =
        await _repository.loadCommands(startFromId: lastLocalCommandId);

    if (commandsResult.isRight()) {
      final commandsSaveResult = await _repository.saveCommands(
          commands:
              ((commandsResult as Right).value as Iterable<Command>).toList());

      if (commandsSaveResult.isRight()) {
        log('Commands Synced');
      }
    }
  }
}
