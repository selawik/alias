import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class DictionaryRemoteDataSource {
  Future<Iterable<WordDto>> loadWords({int? startFromId});

  Future<Iterable<CategoryDto>> loadCategories({int? startFromId});

  Future<Iterable<CommandDto>> loadCommands({int? startFromId});

  Future<CategoryDto> loadLastCategory();

  Future<WordDto> loadLastWord();

  Future<CommandDto> loadLastCommand();
}

@Injectable(as: DictionaryRemoteDataSource)
class FirebaseDictionaryDataSource implements DictionaryRemoteDataSource {
  @override
  Future<Iterable<WordDto>> loadWords({int? startFromId}) async {
    final wordsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId')
        .startAfter([startFromId])
        .limit(100)
        .get();

    return wordsData.docs.map((item) => WordDto.fromJson(item.data()));
  }

  @override
  Future<Iterable<CategoryDto>> loadCategories({int? startFromId}) async {
    final categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId')
        .startAfter([startFromId]).get();

    return categoriesData.docs.map((item) => CategoryDto.fromJson(item.data()));
  }

  @override
  Future<CategoryDto> loadLastCategory() async {
    final lastCategoryData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId', descending: true)
        .limit(1)
        .get();

    return lastCategoryData.docs
        .map((item) => CategoryDto.fromJson(item.data()))
        .first;
  }

  @override
  Future<WordDto> loadLastWord() async {
    final lastWordData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId', descending: true)
        .limit(1)
        .get();

    return lastWordData.docs.map((item) => WordDto.fromJson(item.data())).first;
  }

  @override
  Future<Iterable<CommandDto>> loadCommands({int? startFromId}) async {
    final categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .orderBy('commandId')
        .startAfter([startFromId]).get();

    return categoriesData.docs.map((item) => CommandDto.fromJson(item.data()));
  }

  @override
  Future<CommandDto> loadLastCommand() async {
    final lastWordData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .orderBy('commandId', descending: true)
        .limit(1)
        .get();

    return lastWordData.docs
        .map((item) => CommandDto.fromJson(item.data()))
        .first;
  }
}
