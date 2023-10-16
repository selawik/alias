import 'package:alias/src/feature/categories/data/dto/category_dto.dart';
import 'package:alias/src/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/game/data/dto/word_dto.dart';
import 'package:alias/src/feature/game/data/mapper/words_mapper.dart';
import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:injectable/injectable.dart';

abstract interface class DictionaryMapperFacade {
  WordDto mapWordToDTO(WordEntity word);
  CategoryDto mapCategoryToDTO(CategoryEntity category);

  CategoryEntity mapCategoryDTOToEntity(CategoryDto dto);
  WordEntity mapWordDTOToEntity(WordDto dto);
  CommandEntity mapCommandDTOToEntity(CommandDto dto);
}

@Injectable(as: DictionaryMapperFacade)
final class DictionaryMapperFacadeImpl implements DictionaryMapperFacade {
  final CategoryMapper _categoryMapper;
  final WordsMapper _wordsMapper;
  final CommandMapper _commandMapper;

  DictionaryMapperFacadeImpl(
    CategoryMapper categoryMapper,
    WordsMapper wordsMapper,
    CommandMapper commandMapper,
  )   : _categoryMapper = categoryMapper,
        _wordsMapper = wordsMapper,
        _commandMapper = commandMapper;

  @override
  CategoryEntity mapCategoryDTOToEntity(CategoryDto dto) {
    return _categoryMapper.mapToEntity(dto);
  }

  @override
  CategoryDto mapCategoryToDTO(CategoryEntity category) {
    return _categoryMapper.mapToDto(category);
  }

  @override
  CommandEntity mapCommandDTOToEntity(CommandDto command) {
    return _commandMapper.mapToEntity(command);
  }

  @override
  WordEntity mapWordDTOToEntity(WordDto dto) {
    return _wordsMapper.mapToEntity(dto);
  }

  @override
  WordDto mapWordToDTO(WordEntity word) {
    return _wordsMapper.mapToDto(word);
  }
}
