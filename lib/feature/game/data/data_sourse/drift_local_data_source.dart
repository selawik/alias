

import 'package:alias/feature/game/data/data_sourse/words_local_data_source.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsLocalDataSource)
class DriftLocalDataSource implements WordsLocalDataSource {
  @override
  Future<bool> setPlayedWords(List<Word> words) {
    throw UnimplementedError();
  }
}