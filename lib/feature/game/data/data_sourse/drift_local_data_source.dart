import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/game/data/data_sourse/words_local_data_source.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsLocalDataSource)
class DriftLocalDataSource implements WordsLocalDataSource {
  final DbProvider _dbProvider;

  DriftLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<void> setPlayedWords({required List<Word> words}) async {
    await _dbProvider.insertPlayedWords(playedWords: words);
  }

  @override
  Future<List<Word>> getPlayedWords({required Category category}) async {
    return await _dbProvider.getPlayedWords(category: category);
  }
}
