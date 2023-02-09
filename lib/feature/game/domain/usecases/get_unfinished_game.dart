

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/model/game.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetUnfinishedGame {
  final WordsRepository _repository;

  GetUnfinishedGame({required WordsRepository repository}) : _repository = repository;

  Future<Either<Failure, Game>> execute() async {
    return await _repository.loadUnfinishedGame();
  }
}