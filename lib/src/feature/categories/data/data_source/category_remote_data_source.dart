import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class CategoryRemoteDataSource {
  Future<List<CategoryDto>> getAllCategories();
  Future<int> getCategoryWordsCount(int categoryId);
}

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

class MockCategoryDataSource implements CategoryRemoteDataSource {
  MockCategoryDataSource();

  @override
  Future<List<CategoryDto>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      const CategoryDto(categoryId: 1, name: 'Книги', fileName: ''),
      const CategoryDto(categoryId: 2, name: 'Кино', fileName: ''),
      const CategoryDto(categoryId: 3, name: 'Музыка', fileName: ''),
    ];
  }

  @override
  Future<int> getCategoryWordsCount(int categoryId) {
    // TODO: implement getCategoryWordsCount
    throw UnimplementedError();
  }
}
