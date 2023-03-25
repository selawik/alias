import 'package:alias/feature/commands/data/models/command_dto.dart';

abstract class CommandsDataSource {
  Future<List<CommandDto>> getAllCommands();
}
