import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:alias/feature/game/domain/model/word.dart';

abstract class WordsLocalDataSource {
  Future<void> setPlayedWords({required List<Word> words});

  Future<Iterable<Word>> getPlayedWords({required Category category});

  Future<void> resetGameHistory();

  Future<GameDto?> getUnfinishedGame();

  Future<void> saveStartedGame({required GameDto game});

  Future<void> resetUnfinishedGame();

  Future<Iterable<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  });
}
