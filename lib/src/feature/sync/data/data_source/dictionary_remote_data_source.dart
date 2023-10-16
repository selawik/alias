import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/sync/data/data_source/mapper/dictionary_mapper_facade.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class DictionaryRemoteDataSource {
  Future<List<WordEntity>> loadWords({int? startFromId});

  Future<List<CategoryEntity>> loadCategories({int? startFromId});

  Future<List<CommandEntity>> loadCommands({int? startFromId});

  Future<CategoryEntity> loadLastCategory();

  Future<WordEntity> loadLastWord();

  Future<CommandEntity> loadLastCommand();
}

@Injectable(as: DictionaryRemoteDataSource)
class FirebaseDictionaryDataSource implements DictionaryRemoteDataSource {
  final DictionaryMapperFacade _mapperFacade;

  FirebaseDictionaryDataSource({
    required DictionaryMapperFacade mapperFacade,
  }) : _mapperFacade = mapperFacade;

  @override
  Future<List<WordEntity>> loadWords({int? startFromId}) async {
    final wordsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId')
        .startAfter([startFromId])
        .limit(100)
        .get();

    final words = wordsData.docs.map((item) => WordDto.fromJson(item.data()));

    return words.map(_mapperFacade.mapWordDTOToEntity).toList();
  }

  @override
  Future<List<CategoryEntity>> loadCategories({int? startFromId}) async {
    final categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId')
        .startAfter([startFromId]).get();

    final categories = categoriesData.docs.map(
      (item) => CategoryDto.fromJson(item.data()),
    );

    return categories.map(_mapperFacade.mapCategoryDTOToEntity).toList();
  }

  @override
  Future<CategoryEntity> loadLastCategory() async {
    final lastCategoryData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .orderBy('categoryId', descending: true)
        .limit(1)
        .get();

    /// TODO (@selawik) Process case when there is no Categories
    final lastCategory = lastCategoryData.docs.first;

    return _mapperFacade.mapCategoryDTOToEntity(
      CategoryDto.fromJson(lastCategory.data()),
    );
  }

  @override
  Future<WordEntity> loadLastWord() async {
    final lastWordData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .orderBy('wordId', descending: true)
        .limit(1)
        .get();

    /// TODO (@selawik) Process case when there is no Commands
    final lastWord = lastWordData.docs.first;

    return _mapperFacade.mapWordDTOToEntity(
      WordDto.fromJson(lastWord.data()),
    );
  }

  @override
  Future<List<CommandEntity>> loadCommands({int? startFromId}) async {
    final categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .orderBy('commandId')
        .startAfter([startFromId]).get();

    final commands = categoriesData.docs.map(
      (item) => CommandDto.fromJson(item.data()),
    );

    return commands.map(_mapperFacade.mapCommandDTOToEntity).toList();
  }

  @override
  Future<CommandEntity> loadLastCommand() async {
    final lastCommandData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .orderBy('commandId', descending: true)
        .limit(1)
        .get();

    /// TODO (@selawik) Process case when there is no Commands
    final lastCommand = lastCommandData.docs.first;

    return _mapperFacade.mapCommandDTOToEntity(
      CommandDto.fromJson(lastCommand.data()),
    );
  }
}
