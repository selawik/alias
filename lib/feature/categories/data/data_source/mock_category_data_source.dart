import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/models/category.dart';

class MockCategoryDataSource implements CategoryDataSource {
  MockCategoryDataSource();

  @override
  Future<List<Category>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      const Category(id: 1, name: 'Книги'),
      const Category(id: 2, name: 'Кино'),
      const Category(id: 3, name: 'Музыка'),
    ];
  }
}
