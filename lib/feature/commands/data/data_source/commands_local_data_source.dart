import 'package:alias/feature/commands/data/models/command_dto.dart';

abstract class CommandsLocalDataSource {
  Future<Iterable<CommandDto>> getAllCommands();
}
