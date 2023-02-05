import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game/data/data_sourse/words_local_data_source.dart';
import 'package:alias/feature/game/data/data_sourse/words_remote_data_sourse.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final WordsRemoteDataSource _remoteDataSource;
  final WordsLocalDataSource _localDataSource;

  WordsRepositoryImpl({
    required WordsRemoteDataSource remoteDataSource,
    required WordsLocalDataSource localDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
  }) async {
    try {
      var result = await _remoteDataSource.loadWords(
        categoryId: category.categoryId,
        limit: penaltyMode.isEnabled
            ? commandsCount * 50 + (commandsCount * 30)
            : commandsCount * 50,
      );

      return Right(result);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('error'));
    }
  }

  @override
  Future<void> setPlayedWords({required List<Word> words}) async {
    await _localDataSource.setPlayedWords(words: words);
  }

  @override
  Future<Either<Failure, List<Word>>> getPlayedWords({required Category category}) async {
    return Right(await _localDataSource.getPlayedWords(category: category));
  }
}
