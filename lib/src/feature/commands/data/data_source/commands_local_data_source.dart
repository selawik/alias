import 'package:alias/src/feature/commands/data/models/command_dto.dart';

abstract class CommandsLocalDataSource {
  Future<Iterable<CommandDto>> loadAllCommands();
}
