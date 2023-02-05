import 'package:alias/feature/game_settings/data/models/word.dart';

abstract class WordsLocalDataSource {
  Future<void> setPlayedWords({required List<Word> words});
}