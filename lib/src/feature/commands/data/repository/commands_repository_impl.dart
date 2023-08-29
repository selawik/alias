import 'dart:developer';

import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/commands/data/data_source/commands_data_source.dart';
import 'package:alias/src/feature/commands/data/data_source/commands_local_data_source.dart';
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommandsRepository)
class CommandsRepositoryImpl implements CommandsRepository {
  final CommandsRemoteDataSource _remoteDataSource;
  final CommandsLocalDataSource _localDataSource;

  final CommandMapper _commandMapper;

  CommandsRepositoryImpl({
    required CommandsRemoteDataSource remoteDataSource,
    required CommandsLocalDataSource localDataSource,
    required CommandMapper commandMapper,
  })  : _remoteDataSource = remoteDataSource,
        _commandMapper = commandMapper,
        _localDataSource = localDataSource;

  @override
  Future<Either<Failure, List<Command>>> loadCommands() async {
    try {
      final result = await _localDataSource.loadAllCommands();

      if (result.isEmpty) {
        return const Left(NoDataFailure('There is no commands'));
      }

      return Right(
        result.map(_commandMapper.mapToModel).toList(),
      );
    } catch (e, stacktrace) {
      log(e.toString(), stackTrace: stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
