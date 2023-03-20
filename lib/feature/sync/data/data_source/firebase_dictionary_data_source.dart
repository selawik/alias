import 'package:alias/core/constants/firebase_data_store_collections.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DictionaryRemoteDataSource)
class FirebaseDictionaryDataSource implements DictionaryRemoteDataSource {
  @override
  Future<Iterable<WordDto>> loadWords({int? lastLocalWordId}) async {
    var wordsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId')
        .startAfter([lastLocalWordId])
        .limit(100)
        .get();

    return wordsData.docs
        .map((item) => WordDto.fromJson(item.data()));
  }

  @override
  Future<Iterable<CategoryDto>> loadCategories({int? startFromId}) async {
    var categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId')
        .startAfter([startFromId]).get();

    return categoriesData.docs
        .map((item) => CategoryDto.fromJson(item.data()));
  }

  @override
  Future<CategoryDto> loadLastCategory() async {
    var lastCategoryData = await FirebaseFirestore.instance
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
    var lastWordData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId', descending: true)
        .limit(1)
        .get();

    return lastWordData.docs.map((item) => WordDto.fromJson(item.data())).first;
  }

  @override
  Future<List<Command>> loadCommands() {
    // TODO: implement loadCommands
    throw UnimplementedError();
  }
}
