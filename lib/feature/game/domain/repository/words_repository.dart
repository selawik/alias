import 'package:alias/feature/game_settings/data/models/word.dart';

abstract class WordsRepository {
  Future<List<Word>> loadWords();
}