import 'dart:developer';

import 'package:alias/core/constants/firebase_data_store_collections.dart';
import 'package:alias/feature/game/data/data_sourse/words_remote_data_sourse.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WordsRemoteDataSource)
class FirebaseWordsDataSource implements WordsRemoteDataSource {
  @override
  Future<List<Word>> loadWords({
    required int categoryId,
    required int limit,
    List<int>? playedIds,
  }) async {
    print(playedIds);
    var wordsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .where('categoryId', isEqualTo: categoryId)
        .where('wordId', whereNotIn: playedIds)
        .limit(limit)
        .get();

    log('Words will be played: ${wordsData.docs.length}');

    return wordsData.docs.map((item) => Word.fromJson(item.data())).toList();
  }
}
