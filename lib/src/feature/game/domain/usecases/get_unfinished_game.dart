import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/game/domain/entity/game.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetUnfinishedGame {
  final WordsRepository _repository;

  GetUnfinishedGame({required WordsRepository repository})
      : _repository = repository;

  Future<Either<Failure, Game?>> execute() async {
    return _repository.loadUnfinishedGame();
  }
}
