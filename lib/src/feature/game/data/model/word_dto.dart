import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_dto.freezed.dart';
part 'word_dto.g.dart';

@freezed
class WordDto with _$WordDto {
  const factory WordDto({
    required int wordId,
    required String name,
    required int categoryId,
  }) = _WordDto;

  factory WordDto.fromJson(Map<String, dynamic> json) =>
      _$WordDtoFromJson(json);
}
