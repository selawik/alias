import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';

abstract class WordsLocalDataSource {
  Future<void> setPlayedWords({required List<Word> words});
  Future<List<Word>> getPlayedWords({required Category category});
  Future<void> resetGameHistory();
}