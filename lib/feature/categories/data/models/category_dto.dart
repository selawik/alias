import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int categoryId,
    required String name,
    required String fileName,
    @Default(0) int wordsCount,
    String? fileUrl,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
