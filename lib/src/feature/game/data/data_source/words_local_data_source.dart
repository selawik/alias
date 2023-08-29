import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/game/data/model/game_dto.dart';
import 'package:alias/src/feature/game/data/model/word_dto.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';

abstract interface class WordsLocalDataSource {
  Future<void> savePlayedWords({required List<Word> words});

  Future<Iterable<Word>> loadPlayedWords({required Category category});

  Future<void> resetGameHistory();

  Future<GameDto?> loadUnfinishedGame();

  Future<void> saveStartedGame({required GameDto game});

  Future<void> resetUnfinishedGame();

  Future<Iterable<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    Iterable<int>? playedIds,
  });
}
