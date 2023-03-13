import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:dartz/dartz.dart';

import 'package:alias/feature/commands/data/models/command.dart';

abstract class DictionaryRemoteDataSource {
  Future<List<WordDto>> loadWords();
  Future<List<CategoryDto>> loadCategories({int? startFromId});
  Future<List<Command>> loadCommands();
  Future<CategoryDto> loadLastCategory();
}