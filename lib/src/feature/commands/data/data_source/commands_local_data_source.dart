import 'package:alias/src/core/database/db_provider.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:injectable/injectable.dart';

abstract interface class CommandsLocalDataSource {
  Future<Iterable<CommandDto>> loadAllCommands();
}

@Injectable(as: CommandsLocalDataSource)
class DriftCommandsLocalDataSource implements CommandsLocalDataSource {
  final DbProvider _dbProvider;

  DriftCommandsLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<Iterable<CommandDto>> loadAllCommands() async {
    return _dbProvider.loadCommands();
  }
}
