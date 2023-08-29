import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int categoryId,
    required String name,
    required String fileUrl,
    @Default(0) int wordsCount,
  }) = _Category;
}
