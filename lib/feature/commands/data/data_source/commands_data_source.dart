import 'package:alias/feature/commands/data/models/command_dto.dart';

abstract class CommandsRemoteDataSource {
  Future<List<CommandDto>> loadAllCommands();
}
