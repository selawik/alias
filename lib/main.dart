import 'dart:developer';

import 'package:alias/core/application.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/game_settings/data/models/word.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  di.configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAppCheck.instance.activate();

  initializeFirebaseData();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.locator.get<GameBloc>()),
      ],
      child: const Application(),
    ),
  );
}



void initializeFirebaseData() async {
  var words = ['Один дома', 'Мстители', 'Титаник'];


  for (var word in words) {
    if (await _isWordAlreadyExists(word: word)) {
      log('Слово уже добавлено!');
      continue;
    }

    var wordId = await _getNewWordId();
    var newWord = Word(wordId: wordId, categoryId: 1, name: word);

    await FirebaseFirestore.instance
        .collection('word')
        .add(newWord.toJson());

  }
}

Future<int> _getNewWordId() async {
  var words = await FirebaseFirestore.instance
      .collection('word')
      .orderBy('wordId', descending: true)
      .limit(1)
      .get();

  var lastAddedWord =
      words.docs.map((item) => Word.fromJson(item.data())).first;

  return lastAddedWord.wordId + 1;
}

Future<bool> _isWordAlreadyExists({required String word}) async {
  var existingWord = (await FirebaseFirestore.instance
      .collection('word')
      .where('name', isEqualTo: word)
      .get())
      .docs;

  if (existingWord.isNotEmpty) {
    return true;
  }

  return false;
}
