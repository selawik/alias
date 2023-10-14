import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryMapper implements Mapper<Category, CategoryDto> {
  @override
  Category mapToEntity(CategoryDto type) {
    return Category(
      name: type.name,
      categoryId: type.categoryId,
      fileUrl: type.fileUrl ?? '',
      wordsCount: type.wordsCount,
    );
  }

  @override
  CategoryDto mapToDto(Category type) {
    return CategoryDto(
      name: type.name,
      categoryId: type.categoryId,
      fileName: type.fileUrl,
      wordsCount: type.wordsCount,
    );
  }
}
