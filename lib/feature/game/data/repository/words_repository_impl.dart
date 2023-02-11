import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/data/data_source/words_local_data_source.dart';
import 'package:alias/feature/game/data/data_source/words_remote_data_source.dart';
import 'package:alias/feature/game/data/mapper/words_mapper.dart';
import 'package:alias/feature/game/domain/model/game.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

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
  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    List<Word>? playedWords,
  }) async {
    try {
      var playedWordIds = playedWords?.map((e) => e.wordId).toList();

      var result = await _remoteDataSource.loadWords(
        categoryId: category.categoryId,
        limit: penaltyMode.isEnabled
            ? commandsCount * 50 + (commandsCount * 30)
            : commandsCount * 50,
        playedIds: playedWordIds,
      );

      if (playedWordIds != null) {
        result = result
            .where((element) => !playedWordIds.contains(element.wordId))
            .toList();
      }

      var words = result.map(_mapper.mapToModel).toList();

      return Right(words);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('error'));
    }
  }

  @override
  Future<Either<Failure, void>> setPlayedWords({
    required List<Word> words,
  }) async {
    try {
      return Right(await _localDataSource.setPlayedWords(words: words));
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Word>>> getPlayedWords({
    required Category category,
  }) async {
    try {
      return Right(await _localDataSource.getPlayedWords(category: category));
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetGameHistory() async {
    try {
      return Right(await _localDataSource.resetGameHistory());
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Game?>> loadUnfinishedGame() async {
    try {
      var gameDto = await _localDataSource.getUnfinishedGame();

      if (gameDto != null) {
        return Right(Game(nextPlayingCommandId: gameDto.nextPlayingCommandId));
      }

      return const Right(null);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
