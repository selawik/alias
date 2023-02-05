import 'package:alias/feature/game_settings/data/models/word.dart';

abstract class WordsLocalDataSource {
  Future<bool> setPlayedWords(List<Word> words);
}