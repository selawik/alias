import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoadWords {
  final WordsRepository repository;

  LoadWords({required this.repository});

  Future<Either<Failure, List<Word>>> execute({
    required Category category,
    required int commandsCount,
    required BinarySelectorMode penaltyMode,
    required CommandMoveMode moveTime,
    Iterable<Word>? playedWords,
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
