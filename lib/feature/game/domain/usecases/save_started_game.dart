import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/domain/model/game_settings.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
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
