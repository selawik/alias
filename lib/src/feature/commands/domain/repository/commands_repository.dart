import 'package:alias/src/feature/commands/domain/models/command_entity.dart';

abstract interface class ICommandsRepository {
  Future<List<CommandEntity>> loadCommands();
}
