import 'package:alias/feature/game/domain/repository/words_repository.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  @override
  Future<List<Word>> loadWords() {
    throw UnimplementedError();
  }
}