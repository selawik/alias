import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoadWords {
  final WordsRepository repository;

  LoadWords({required this.repository});
  
  Future<Either<Failure, List<Word>>> execute() async {
    return right([]);
  }
}