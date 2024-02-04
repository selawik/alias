import 'dart:developer';

import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/data/data_source/words_local_data_source.dart';
import 'package:alias/src/feature/game/data/data_source/words_remote_data_source.dart';
import 'package:alias/src/feature/game/data/dto/game_dto.dart';
import 'package:alias/src/feature/game/data/mapper/words_mapper.dart';
import 'package:alias/src/feature/game/domain/entity/game.dart';
import 'package:alias/src/feature/game/domain/entity/game_settings.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:injectable/injectable.dart';

abstract interface class WordsRepository {
  Future<List<WordEntity>> loadWords({
    required CategoryEntity category,
    required int wordCount,
    Iterable<WordEntity>? playedWords,
  });

  Future<Iterable<WordEntity>> loadPlayedWords({
    required CategoryEntity category,
  });

  Future<Game?> loadUnfinishedGame();

  Future<void> savePlayedWords({
    required List<WordEntity> words,
  });

  Future<void> saveStartedGame({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required CategoryEntity category,
  });

  Future<void> resetGameHistory();

  Future<void> resetUnfinishedGame();
}

@Injectable(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final WordsRemoteDataSource _remoteDataSource;
  final WordsLocalDataSource _localDataSource;
  final WordsMapper _mapper;

  WordsRepositoryImpl({
    required WordsRemoteDataSource remoteDataSource,
    required WordsLocalDataSource localDataSource,
    required WordsMapper mapper,
  })  : _mapper = mapper,
        _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<void> savePlayedWords({
    required List<WordEntity> words,
  }) async {
    try {
      return await _localDataSource.savePlayedWords(words: words);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }

  @override
  Future<void> saveStartedGame({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required CategoryEntity category,
  }) async {
    try {
      final gameDto = GameDto(
        nextPlayingCommandId: commands.first.commandId,
        lastWordMode: gameSettings.lastWordMode,
        penaltyMode: gameSettings.penaltyMode,
        moveTime: gameSettings.moveTime,
        categoryId: category.categoryId,
      );

      await _localDataSource.saveStartedGame(game: gameDto);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }

  @override
  Future<void> resetGameHistory() async {
    try {
      return await _localDataSource.resetGameHistory();
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }

  @override
  Future<void> resetUnfinishedGame() async {
    try {
      return await _localDataSource.resetUnfinishedGame();
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      rethrow;
    }
  }

  @override
  Future<Game?> loadUnfinishedGame() async {
    try {
      final gameDto = await _localDataSource.loadUnfinishedGame();

      if (gameDto != null) {
        return Game(nextPlayingCommandId: gameDto.nextPlayingCommandId);
      }

      return null;
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }

  @override
  Future<Iterable<WordEntity>> loadPlayedWords({
    required CategoryEntity category,
  }) async {
    try {
      return await _localDataSource.loadPlayedWords(category: category);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }

  @override
  Future<List<WordEntity>> loadWords({
    required CategoryEntity category,
    required int wordCount,
    Iterable<WordEntity>? playedWords,
  }) async {
    try {
      final playedWordIds = playedWords?.map((e) => e.wordId).toList();

      var result = await _localDataSource.loadWords(
        categoryId: category.categoryId,
        limit: wordCount,
        playedIds: playedWordIds,
      );

      if (playedWordIds != null) {
        result = result
            .where((element) => !playedWordIds.contains(element.wordId))
            .toList();
      }

      final words = result.map(_mapper.mapToEntity).toList();

      return words;
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      Error.throwWithStackTrace(e, stacktrace);
    }
  }
}
