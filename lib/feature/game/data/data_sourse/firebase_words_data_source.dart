import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/game/data/data_sourse/words_data_sourse.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: WordsDataSource)
class FirebaseWordsDataSource implements WordsDataSource {
  @override
  Future<Either<Failure, List<Word>>> loadWords() {
    throw UnimplementedError();
  }

}