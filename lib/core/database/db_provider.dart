import 'package:alias/core/database/database.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:injectable/injectable.dart';

@singleton
class DbProvider {
  final Database _db;

  DbProvider({
    required Database db,
  }) : _db = db;

  Future<void> insertPlayedWords({required List<Word> playedWords}) async {
    for (var word in playedWords) {
      await _db.playedWordDao.setPlayedWords(
        PlayedWordCompanion.insert(playedWordId: word.wordId, name: word.name),
      );
    }
  }
}
