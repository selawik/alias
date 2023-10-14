import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/domain/entity/game_settings.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SaveStartedGame {
  final WordsRepository repository;

  SaveStartedGame({required this.repository});

  Future<Either<Failure, void>> execute({
    required List<PlayingCommand> commands,
    required GameSettings gameSettings,
    required Category category,
  }) async {
    return repository.saveStartedGame(
      category: category,
      commands: commands,
      gameSettings: gameSettings,
    );
  }
}
