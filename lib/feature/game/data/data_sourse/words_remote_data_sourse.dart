import 'package:alias/feature/game_settings/data/models/word.dart';

abstract class WordsRemoteDataSource {
  Future<List<Word>> loadWords({required int categoryId, required int limit});
}