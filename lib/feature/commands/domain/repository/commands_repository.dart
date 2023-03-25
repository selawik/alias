import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:dartz/dartz.dart';

abstract class CommandsRepository {
  Future<Either<Failure, List<Command>>> loadCommands();
}
