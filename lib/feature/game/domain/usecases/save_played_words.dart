import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SavePlayedWords {

  final WordsRepository repository;

  SavePlayedWords({required this.repository});

  Future<Either<Failure, void>> execute({required List<Word> words}) async {
    return Right(await repository.setPlayedWords(words: words));
  }
}