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
  Future<List<WordDto>> loadWords() {
    // TODO: implement loadWords
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryDto>> loadCategories({int? startFromId}) async {
    var categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId')
        .startAt([startFromId])
        .get();

    return categoriesData.docs
        .map((item) => CategoryDto.fromJson(item.data()))
        .toList();
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
  Future<List<Command>> loadCommands() {
    // TODO: implement loadCommands
    throw UnimplementedError();
  }
}
