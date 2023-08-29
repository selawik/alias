import 'package:alias/src/feature/game/data/model/word_dto.dart';

abstract class WordsRemoteDataSource {
  Future<List<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    List<int>? playedIds,
  });
}
