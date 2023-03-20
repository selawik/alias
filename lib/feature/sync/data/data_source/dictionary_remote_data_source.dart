import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/game/data/model/game_dto.dart';
import 'package:alias/feature/game/data/model/word_dto.dart';
import 'package:dartz/dartz.dart';

import 'package:alias/feature/commands/data/models/command.dart';

abstract class DictionaryRemoteDataSource {
  Future<Iterable<WordDto>> loadWords({int? lastLocalWordId});
  Future<Iterable<CategoryDto>> loadCategories({int? startFromId});
  Future<Iterable<Command>> loadCommands();

  Future<CategoryDto> loadLastCategory();
  Future<WordDto> loadLastWord();
}