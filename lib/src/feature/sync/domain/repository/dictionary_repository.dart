import 'dart:developer';

import 'package:alias/src/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:alias/src/feature/sync/data/data_source/dictionary_remote_data_source.dart';
import 'package:alias/src/feature/sync/domain/errors/errors.dart';
import 'package:injectable/injectable.dart';

abstract class DictionaryRepository {
  Future<void> syncDictionary();
  Future<bool> isDictionaryReadyForGame();
}

@Injectable(as: DictionaryRepository)
class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource _localDataSource;
  final DictionaryRemoteDataSource _remoteDataSource;

  DictionaryRepositoryImpl(
    DictionaryRemoteDataSource remoteDataSource,
    DictionaryLocalDataSource localDataSource,
  )   : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<bool> isDictionaryReadyForGame() async {
    try {
      final lastLocalCategoryId = await _localDataSource.loadLastCategoryId();
      final lastLocalWordId = await _localDataSource.loadLastWordId();
      final lastLocalCommandId = await _localDataSource.loadLastCommandId();

      return lastLocalCommandId != null &&
          lastLocalCategoryId != null &&
          lastLocalWordId != null;
    } on Object catch (exception, stack) {
      log(exception.toString(), stackTrace: stack);

      return false;
    }
  }

  @override
  Future<void> syncDictionary() async {
    await _syncCategories();
    await _syncWords();
    await _syncCommand();
  }

  Future<void> _syncCategories() async {
    try {
      final lastLocalCategoryId = await _localDataSource.loadLastCategoryId();
      final lastRemoteCategory = await _remoteDataSource.loadLastCategory();

      log('Last local category id $lastLocalCategoryId');
      log('Last remote category id ${lastRemoteCategory.categoryId}');

      if (lastLocalCategoryId != lastRemoteCategory.categoryId) {
        final categories = await _remoteDataSource.loadCategories(
          startFromId: lastLocalCategoryId,
        );

        await _localDataSource.saveCategories(categories: categories);
      }
    } on Object catch (exception, stack) {
      log(exception.toString(), stackTrace: stack);
      Error.throwWithStackTrace(CategorySyncException(), stack);
    }
  }

  Future<void> _syncWords() async {
    try {
      final lastLocalWordId = await _localDataSource.loadLastWordId();
      final lastRemoteWord = await _remoteDataSource.loadLastWord();

      log('Last local word id $lastRemoteWord');
      log('Last remote word id $lastLocalWordId');

      var lastAddedLocalWordId = lastLocalWordId;

      if (lastRemoteWord.wordId != lastLocalWordId) {
        while ((lastAddedLocalWordId ?? 0) < lastRemoteWord.wordId) {
          final words = await _remoteDataSource.loadWords(
            startFromId: lastAddedLocalWordId,
          );

          await _localDataSource.saveWords(words: words);

          lastAddedLocalWordId = words.last.wordId;
        }
      }

      log('Words Synced Local: $lastLocalWordId Remote: $lastRemoteWord');
    } on Object catch (exception, stack) {
      log(exception.toString(), stackTrace: stack);
      Error.throwWithStackTrace(WordSyncException(), stack);
    }
  }

  Future<void> _syncCommand() async {
    try {
      final lastLocalCommandId = await _localDataSource.loadLastCommandId();
      final lastRemoteCommand = await _remoteDataSource.loadLastCommand();

      log('Last local command id $lastLocalCommandId');
      log('Last remote command id $lastRemoteCommand');

      if (lastRemoteCommand.commandId != lastLocalCommandId) {
        final commands = await _remoteDataSource.loadCommands(
          startFromId: lastLocalCommandId,
        );

        await _localDataSource.saveCommands(commands: commands);
      }
    } on Object catch (exception, stack) {
      log(exception.toString(), stackTrace: stack);
      Error.throwWithStackTrace(WordSyncException(), stack);
    }
  }
}
