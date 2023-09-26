import 'package:alias/src/feature/commands/data/data_source/commands_data_source.dart';
import 'package:alias/src/feature/commands/data/data_source/commands_local_data_source.dart';
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/src/feature/commands/domain/models/command_entity.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:injectable/injectable.dart';

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

    return result.map(_commandMapper.mapToModel).toList();
  }
}
