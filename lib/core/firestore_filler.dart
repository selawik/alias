import 'dart:convert';
import 'dart:developer';

import 'package:alias/core/constants/firebase_data_store_collections.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class FirestoreFiller {
  static Future<void> loadWordsFromJson({required String filename}) async {
    var jsonData = await rootBundle.loadString(filename);

    final wordsJson = jsonDecode(jsonData) as List;

    var words = wordsJson.map((data) => data as String);

    await addWords(words: words.toList(), categoryId: 7);
  }

  static Future<void> addWords({required List<String> words, required int categoryId}) async {
    var wordId = await _getNewWordId();

    log('Words will be added: ${words.length}');
    for (var word in words) {
      if (await _isWordAlreadyExists(word: word)) {
        log('Слово уже добавлено!');
        continue;
      }

      var newWord = WordDto(wordId: wordId, categoryId: categoryId, name: word);

      await FirebaseFirestore.instance
          .collection(FirebaseDataStoreCollections.word)
          .add(newWord.toJson());

      wordId++;
    }

    log('Words added');
  }

  static Future<int> _getNewWordId() async {
    var words = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId', descending: true)
        .limit(1)
        .get();

    var lastAddedWord =
        words.docs.map((item) => WordDto.fromJson(item.data())).first;

    return lastAddedWord.wordId + 1;
  }

  static Future<bool> _isWordAlreadyExists({required String word}) async {
    var existingWord = (await FirebaseFirestore.instance
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

