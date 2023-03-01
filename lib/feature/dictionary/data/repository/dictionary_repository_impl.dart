import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/dictionary/data/data_source/dictionary_local_data_source.dart';
import 'package:alias/feature/dictionary/data/data_source/dictionary_remote_data_source.dart';
import 'package:alias/feature/dictionary/domain/repository/dictionary_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DictionaryRepository)
class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource _localDataSource;
  final DictionaryRemoteDataSource _remoteDataSource;

  DictionaryRepositoryImpl(
    DictionaryRemoteDataSource remoteDataSource,
    DictionaryLocalDataSource localDataSource,
  )   : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, bool>> loadDictionary() {
    // TODO: implement loadDictionary
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, int>> getLastLocalCategoryId() {
    // TODO: implement getLastLocalCategoryId
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Category>>> loadCategories() {
    // TODO: implement loadCategories
    throw UnimplementedError();
  }
}
