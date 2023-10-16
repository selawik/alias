import 'dart:developer';

import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/data/data_source/words_local_data_source.dart';
import 'package:alias/src/feature/game/data/data_source/words_remote_data_source.dart';
import 'package:alias/src/feature/game/data/dto/game_dto.dart';
import 'package:alias/src/feature/game/data/mapper/words_mapper.dart';
import 'package:alias/src/feature/game/domain/entity/game.dart';
import 'package:alias/src/feature/game/domain/entity/game_settings.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract interface class WordsRepository {
  Future<Either<Failure, List<WordEntity>>> loadWords({
    required CategoryEntity category,
    required int wordCount,
    Iterable<WordEntity>? playedWords,
  });

  Future<Either<Failure, Iterable<WordEntity>>> loadPlayedWords({
    required CategoryEntity category,
  });

  Future<Either<Failure, Game?>> loadUnfinishedGame();

  Future<Either<Failure, void>> savePlayedWords(
      {required List<WordEntity> words});

  Future<Either<Failure, void>> saveStartedGame({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required CategoryEntity category,
  });

  Future<Either<Failure, void>> resetGameHistory();

  Future<Either<Failure, void>> resetUnfinishedGame();
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
  Future<Either<Failure, void>> savePlayedWords({
    required List<WordEntity> words,
  }) async {
    try {
      return Right(await _localDataSource.savePlayedWords(words: words));
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveStartedGame({
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

      return const Right(null);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetGameHistory() async {
    try {
      return Right(await _localDataSource.resetGameHistory());
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetUnfinishedGame() async {
    try {
      return Right(await _localDataSource.resetUnfinishedGame());
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Game?>> loadUnfinishedGame() async {
    try {
      final gameDto = await _localDataSource.loadUnfinishedGame();

      if (gameDto != null) {
        return Right(Game(nextPlayingCommandId: gameDto.nextPlayingCommandId));
      }

      return const Right(null);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Iterable<WordEntity>>> loadPlayedWords({
    required CategoryEntity category,
  }) async {
    try {
      return Right(await _localDataSource.loadPlayedWords(category: category));
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<WordEntity>>> loadWords({
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

      return Right(words);
    } on Exception catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('error'));
    }
  }
}
