import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetPlayedWords {
  final WordsRepository repository;

  GetPlayedWords({required this.repository});

  Future<Either<Failure, List<Word>>> execute(
      {required Category category}) async {
    return await repository.getPlayedWords(category: category);
  }
}
