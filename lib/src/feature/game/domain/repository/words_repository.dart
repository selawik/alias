import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/game/domain/model/game.dart';
import 'package:alias/src/feature/game/domain/model/game_settings.dart';
import 'package:alias/src/feature/game/domain/model/playing_command.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:dartz/dartz.dart';

abstract class WordsRepository {
  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int wordCount,
    Iterable<Word>? playedWords,
  });

  Future<Either<Failure, Iterable<Word>>> loadPlayedWords({
    required Category category,
  });

  Future<Either<Failure, Game?>> loadUnfinishedGame();

  Future<Either<Failure, void>> savePlayedWords({required List<Word> words});

  Future<Either<Failure, void>> saveStartedGame({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required Category category,
  });

  Future<Either<Failure, void>> resetGameHistory();

  Future<Either<Failure, void>> resetUnfinishedGame();
}
