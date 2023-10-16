import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required int categoryId,
    required String name,
    required String fileUrl,
    @Default(0) int wordsCount,
  }) = _CategoryEntity;
}
