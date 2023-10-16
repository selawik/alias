import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
class WordEntity with _$WordEntity {
  const factory WordEntity({
    required int wordId,
    required String name,
    required int categoryId,
  }) = _WordEntity;
}
