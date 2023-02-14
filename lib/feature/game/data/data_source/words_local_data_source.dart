import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/domain/model/word.dart' ;

abstract class WordsLocalDataSource {
  Future<void> setPlayedWords({required List<Word> words});
  Future<List<Word>> getPlayedWords({required Category category});
  Future<void> resetGameHistory();
  Future<GameDto?> getUnfinishedGame();
  Future<void> saveStartedGame({required GameDto game});
  Future<void> resetUnfinishedGame();
}