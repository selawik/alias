import 'package:alias/core/constants/firebase_data_store_collections.dart';
import 'package:alias/feature/categories/data/data_source/category_remote_data_source.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRemoteDataSource)
class FirebaseCategoryDataSource implements CategoryRemoteDataSource {
  FirebaseCategoryDataSource();

  @override
  Future<List<CategoryDto>> getAllCategories() async {
    final categoriesData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.category)
        .get();

    return categoriesData.docs
        .map((item) => CategoryDto.fromJson(item.data()))
        .toList();
  }

  @override
  Future<int> getCategoryWordsCount(int categoryId) async {
    final wordsCount = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.word)
        .where('categoryId', isEqualTo: categoryId)
        .count()
        .get();

    return wordsCount.count;
  }
}
