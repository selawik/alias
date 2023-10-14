import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';

final List<CommandEntity> mockCommands = [
  const CommandEntity(commandId: 1, name: 'Бобры'),
  const CommandEntity(commandId: 2, name: 'Кошки'),
  const CommandEntity(commandId: 3, name: 'Собаки'),
];

class MockCommandsRepository implements ICommandsRepository {
  @override
  Future<List<CommandEntity>> loadCommands() async {
    await Future.delayed(const Duration(seconds: 1));

    return mockCommands;
  }
}
