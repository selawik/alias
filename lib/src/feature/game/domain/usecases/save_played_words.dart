import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SavePlayedWords {
  final WordsRepository repository;

  SavePlayedWords({required this.repository});

  Future<Either<Failure, void>> execute({required List<Word> words}) async {
    return repository.savePlayedWords(words: words);
  }
}
