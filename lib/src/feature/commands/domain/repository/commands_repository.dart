import 'package:alias/src/core/error/failure.dart';
import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:dartz/dartz.dart';

abstract class CommandsRepository {
  Future<Either<Failure, List<Command>>> loadCommands();
}
