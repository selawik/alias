import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ResetUnfinishedGame {
  final WordsRepository _repository;

  ResetUnfinishedGame({required WordsRepository repository})
      : _repository = repository;

  Future<Either<Failure, void>> execute() async {
    return Right(await _repository.resetUnfinishedGame());
  }
}
