import 'dart:developer';

import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class WordsRemoteDataSource {
  Future<List<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    List<int>? playedIds,
  });
}

@Injectable(as: WordsRemoteDataSource)
class FirebaseWordsDataSource implements WordsRemoteDataSource {
  @override
  Future<List<WordDto>> loadWords({
    required int categoryId,
    required int limit,
    List<int>? playedIds,
  }) async {
    final wordsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .where('categoryId', isEqualTo: categoryId)
        .orderBy('wordId')
        .get();

    log('Words will be played: ${wordsData.docs.length}');
    final docs = wordsData.docs..shuffle();

    log('${docs.length} - docs');
    if (limit >= docs.length) {
      limit = docs.length;
    }

    final limitedWords = docs.getRange(0, limit);

    return limitedWords.map((item) => WordDto.fromJson(item.data())).toList();
  }
}
