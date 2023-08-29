import 'dart:convert';
import 'dart:developer';

import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/game/data/model/word_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class FirestoreFiller {
  static Future<void> loadWordsFromJson(
      {required String filename, required int categoryId}) async {
    final jsonData = await rootBundle.loadString('assets/words/$filename');

    final wordsJson = jsonDecode(jsonData) as List;

    final words = wordsJson.map((data) => data as String);

    await addWords(words: words.toSet().toList(), categoryId: categoryId);
  }

  static Future<void> addWords(
      {required List<String> words, required int categoryId}) async {
    var wordId = await _getNewWordId();

    log('Words will be added: ${words.length}');
    for (final word in words) {
      if (await _isWordAlreadyExists(word: word)) {
        //log('Слово уже добавлено ${word.toString()}!');
        continue;
      }

      final newWord =
          WordDto(wordId: wordId, categoryId: categoryId, name: word);

      await FirebaseFirestore.instance
          .collection(FirebaseDataStoreCollections.word)
          .add(newWord.toJson());

      wordId++;
    }

    log('Words added');
  }

  static Future<int> _getNewWordId() async {
    final words = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId', descending: true)
        .limit(1)
        .get();

    final lastAddedWord =
        words.docs.map((item) => WordDto.fromJson(item.data())).first;

    return lastAddedWord.wordId + 1;
  }

  static Future<bool> _isWordAlreadyExists({required String word}) async {
    final existingWord = (await FirebaseFirestore.instance
            .collection(FirebaseDataStoreCollections.word)
            .where('name', isEqualTo: word)
            .get())
        .docs;

    if (existingWord.isNotEmpty) {
      return true;
    }

    return false;
  }
}
