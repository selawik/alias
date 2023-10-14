import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/game/domain/repository/words_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetPlayedWords {
  final WordsRepository repository;

  GetPlayedWords({required this.repository});

  Future<Either<Failure, Iterable<Word>>> execute({
    required Category category,
  }) async {
    return repository.loadPlayedWords(category: category);
  }
}
