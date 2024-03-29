import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:alias/src/feature/game_settings/domain/entity/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/entity/command_move_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoadWords {
  final WordsRepository repository;

  LoadWords({required this.repository});

  Future<Either<Failure, List<WordEntity>>> execute({
    required CategoryEntity category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    required CommandMoveMode moveTime,
    Iterable<WordEntity>? playedWords,
  }) async {
    var wordsCount = penaltyMode.isEnabled
        ? commandsCount * 80 + (commandsCount * 20)
        : commandsCount * 80;

    wordsCount += (moveTime.getDuration().inSeconds * 0.7).toInt();

    return repository.loadWords(
      wordCount: wordsCount,
      category: category,
      playedWords: playedWords,
    );
  }
}
