import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';

class MockCategoryDataSource implements CategoryDataSource {
  MockCategoryDataSource();

  @override
  Future<List<CategoryDto>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      const CategoryDto(categoryId: 1, name: 'Книги', fileName: '', wordsCount: 0),
      const CategoryDto(categoryId: 2, name: 'Кино', fileName: '', wordsCount: 0),
      const CategoryDto(categoryId: 3, name: 'Музыка', fileName: '', wordsCount: 0),
    ];
  }

  @override
  Future<int> getCategoryWordsCount(int categoryId) {
    // TODO: implement getCategoryWordsCount
    throw UnimplementedError();
  }
}
