import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category.dart';

class MockCategoryDataSource implements CategoryDataSource {
  MockCategoryDataSource();

  @override
  Future<List<Category>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      const Category(categoryId: 1, name: 'Книги'),
      const Category(categoryId: 2, name: 'Кино'),
      const Category(categoryId: 3, name: 'Музыка'),
    ];
  }
}
