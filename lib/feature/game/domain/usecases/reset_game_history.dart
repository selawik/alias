import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ResetGameHistory {
  final WordsRepository repository;

  ResetGameHistory({required this.repository});

  Future<Either<Failure, void>> execute() async {
    return Right(await repository.resetGameHistory());
  }
}
