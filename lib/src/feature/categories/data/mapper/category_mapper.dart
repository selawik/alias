import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryMapper implements Mapper<CategoryEntity, CategoryDto> {
  @override
  CategoryEntity mapToEntity(CategoryDto dto) {
    return CategoryEntity(
      name: dto.name,
      categoryId: dto.categoryId,
      fileUrl: dto.fileUrl ?? '',
      wordsCount: dto.wordsCount,
    );
  }

  @override
  CategoryDto mapToDto(CategoryEntity entity) {
    return CategoryDto(
      name: entity.name,
      categoryId: entity.categoryId,
      fileName: entity.fileUrl,
      wordsCount: entity.wordsCount,
    );
  }
}
