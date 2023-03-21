import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/model/game.dart';
import 'package:alias/feature/game/domain/model/game_settings.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:dartz/dartz.dart';

abstract class WordsRepository {
  Future<Either<Failure, List<Word>>> loadWords({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    Iterable<Word>? playedWords,
  });

  Future<Either<Failure, void>> setPlayedWords({required List<Word> words});

  Future<Either<Failure, Iterable<Word>>> getPlayedWords(
      {required Category category});

  Future<Either<Failure, void>> resetGameHistory();

  Future<Either<Failure, Game?>> loadUnfinishedGame();

  Future<Either<Failure, void>> saveStartedGame({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required Category category,
  });

  Future<Either<Failure, void>> resetUnfinishedGame();
}
