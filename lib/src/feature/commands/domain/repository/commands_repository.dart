import 'package:alias/src/feature/commands/data/data_source/commands_remote_data_source.dart';
import 'package:alias/src/feature/commands/data/data_source/commands_local_data_source.dart';
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:injectable/injectable.dart';

abstract interface class ICommandsRepository {
  Future<List<CommandEntity>> loadCommands();
}

@Injectable(as: ICommandsRepository)
class CommandsRepositoryImpl implements ICommandsRepository {
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
  Future<List<CommandEntity>> loadCommands() async {
    final result = await _localDataSource.loadAllCommands();

    return result.map(_commandMapper.mapToEntity).toList();
  }
}
