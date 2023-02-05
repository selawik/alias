


import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SavePlayedWords {
  Future<Either<Failure, bool>> execute({required List<Word> words}) async {
    return const Left(DatabaseFailure('error'));
  }
}