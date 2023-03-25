import 'package:alias/core/database/db_provider.dart';
import 'package:alias/feature/commands/data/data_source/commands_local_data_source.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommandsLocalDataSource)
class DriftCommandsLocalDataSource implements CommandsLocalDataSource {
  final DbProvider _dbProvider;

  DriftCommandsLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<Iterable<CommandDto>> getAllCommands() async {
    return await _dbProvider.loadCommands();
  }
}
