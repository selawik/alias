import 'package:alias/feature/commands/data/models/command.dart';

abstract class CommandsDataSource {
  Future<List<Command>> getAllCommands();
}
