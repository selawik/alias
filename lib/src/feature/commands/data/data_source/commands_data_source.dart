import 'package:alias/src/feature/commands/data/models/command_dto.dart';

abstract interface class CommandsRemoteDataSource {
  Future<List<CommandDto>> loadAllCommands();
}
