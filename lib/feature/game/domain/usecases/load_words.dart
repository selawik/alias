import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
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
    List<Word>? playedWords,
  }) async {
    return await repository.loadWords(
      commandsCount: commandsCount,
      category: category,
      penaltyMode: penaltyMode,
      playedWords: playedWords,
    );
  }
}
