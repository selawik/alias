import 'dart:developer';

import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/data/mapper/category_mapper.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:alias/feature/game/data/mapper/words_mapper.dart';
import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart';
import 'package:alias/feature/sync/data/data_source/dictionary_remote_data_source.dart';
import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DictionaryRepository)
class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource _localDataSource;
  final DictionaryRemoteDataSource _remoteDataSource;

  final CategoryMapper _categoryMapper;
  final WordsMapper _wordsMapper;
  final CommandMapper _commandMapper;

  DictionaryRepositoryImpl(
    DictionaryRemoteDataSource remoteDataSource,
    DictionaryLocalDataSource localDataSource,
    CategoryMapper categoryMapper,
    WordsMapper wordsMapper,
    CommandMapper commandMapper,
  )   : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _categoryMapper = categoryMapper,
        _wordsMapper = wordsMapper,
        _commandMapper = commandMapper;

  @override
  Future<Either<Failure, void>> saveWords({required List<Word> words}) async {
    try {
      final wordDtos = words.map(_wordsMapper.mapFromModel);

      return Right(
        await _localDataSource.saveWords(
          words: wordDtos.toList(),
        ),
      );
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading category'));
    }
  }

  @override
  Future<Either<Failure, void>> saveCategories(
      List<Category> categories) async {
    try {
      final categoryDtos = categories.map(_categoryMapper.mapFromModel);

      return Right(
        await _localDataSource.saveCategories(
          categories: categoryDtos,
        ),
      );
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading category'));
    }
  }

  @override
  Future<Either<Failure, void>> saveCommands(
      {required Iterable<Command> commands}) async {
    try {
      final commandDtos = commands.map(_commandMapper.mapFromModel);

      return Right(
        await _localDataSource.saveCommands(commands: commandDtos),
      );
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading category'));
    }
  }

  @override
  Future<Either<Failure, Iterable<Category>>> loadCategories(
      {int? startFromId}) async {
    try {
      final categoryDtos =
          await _remoteDataSource.loadCategories(startFromId: startFromId);

      return Right(categoryDtos.map(_categoryMapper.mapToModel).toList());
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading categories'));
    }
  }

  @override
  Future<Either<Failure, int?>> loadLastLocalCategoryId() async {
    try {
      final lastCategoryId = await _localDataSource.loadLastCategoryId();

      return Right(lastCategoryId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading category'));
    }
  }

  @override
  Future<Either<Failure, int>> loadLastRemoteCategoryId() async {
    try {
      final categoryDto = await _remoteDataSource.loadLastCategory();

      return Right(categoryDto.categoryId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last category'));
    }
  }

  @override
  Future<Either<Failure, int?>> loadLastLocalWordId() async {
    try {
      final lastWordId = await _localDataSource.loadLastWordId();

      return Right(lastWordId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading words'));
    }
  }

  @override
  Future<Either<Failure, int>> loadLastRemoteWordId() async {
    try {
      final wordDto = await _remoteDataSource.loadLastWord();

      return Right(wordDto.wordId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last category'));
    }
  }

  @override
  Future<Either<Failure, Iterable<Word>>> loadWordsBatch({
    int? startFromId,
  }) async {
    try {
      final wordDtos =
          await _remoteDataSource.loadWords(startFromId: startFromId);
      final words = wordDtos.map(_wordsMapper.mapToModel);

      return Right(words.toList());
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last category'));
    }
  }

  @override
  Future<Either<Failure, int?>> loadLastLocalCommandId() async {
    try {
      final categoryDto = await _localDataSource.loadLastCommandId();

      return Right(categoryDto);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last command'));
    }
  }

  @override
  Future<Either<Failure, int>> loadLastRemoteCommandId() async {
    try {
      final commandDto = await _remoteDataSource.loadLastCommand();

      return Right(commandDto.commandId);
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading last command'));
    }
  }

  @override
  Future<Either<Failure, Iterable<Command>>> loadCommands({
    int? startFromId,
  }) async {
    try {
      final commandDtos =
          await _remoteDataSource.loadCommands(startFromId: startFromId);

      return Right(commandDtos.map(_commandMapper.mapToModel));
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error during loading categories'));
    }
  }
}
