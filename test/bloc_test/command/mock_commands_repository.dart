import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';

final List<Command> mockCommands = [
  Command(commandId: 1, name: 'Бобры'),
];

class MockCommandsRepository implements ICommandsRepository {
  @override
  Future<Either<Failure, List<Command>>> loadCommands() async {
    await Future.delayed(const Duration(seconds: 1));

    return Right([]);
  }
}