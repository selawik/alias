import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/commands/domain/models/command_entity.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';

final List<CommandEntity> mockCommands = [
  const CommandEntity(commandId: 1, name: 'Бобры'),
  const CommandEntity(commandId: 2, name: 'Кошки'),
  const CommandEntity(commandId: 3, name: 'Собаки'),
];

class MockCommandsRepository implements ICommandsRepository {
  @override
  Future<Either<Failure, List<CommandEntity>>> loadCommands() async {
    await Future.delayed(const Duration(seconds: 1));

    return Right(mockCommands);
  }
}
