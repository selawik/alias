

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ResetUnfinishedGame {
  final WordsRepository repository;

  ResetUnfinishedGame({required this.repository});

  Future<Either<Failure, void>> execute() async {
    return Right(await repository.resetUnfinishedGame());
  }
}