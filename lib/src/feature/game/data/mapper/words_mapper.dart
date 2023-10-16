import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordsMapper implements Mapper<WordEntity, WordDto> {
  @override
  WordEntity mapToEntity(WordDto type) {
    return WordEntity(
      wordId: type.wordId,
      name: type.name,
      categoryId: type.categoryId,
    );
  }

  @override
  WordDto mapToDto(WordEntity type) {
    return WordDto(
      wordId: type.wordId,
      name: type.name,
      categoryId: type.categoryId,
    );
  }
}
