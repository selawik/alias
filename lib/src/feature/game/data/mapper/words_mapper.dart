import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/game/data/model/word_dto.dart';
import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordsMapper implements Mapper<Word, WordDto> {
  @override
  Word mapToModel(WordDto type) {
    return Word(
      wordId: type.wordId,
      name: type.name,
      categoryId: type.categoryId,
    );
  }

  @override
  WordDto mapFromModel(Word type) {
    return WordDto(
      wordId: type.wordId,
      name: type.name,
      categoryId: type.categoryId,
    );
  }
}
