import 'package:alias/src/feature/game/data/model/word_dto.dart';

abstract interface class WordsRemoteDataSource {
  Future<List<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    List<int>? playedIds,
  });
}
