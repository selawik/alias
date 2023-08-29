import 'package:alias/src/feature/commands/data/models/command_dto.dart';

abstract interface class CommandsLocalDataSource {
  Future<Iterable<CommandDto>> loadAllCommands();
}
