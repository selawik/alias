import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game/data/data_sourse/words_data_sourse.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final WordsDataSource dataSource;

  WordsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
  }) async {
    try {
      var result = await dataSource.loadWords(
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
}
