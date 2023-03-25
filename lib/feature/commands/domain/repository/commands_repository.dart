import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:dartz/dartz.dart';

abstract class CommandsRepository {
  Future<Either<Failure, List<CommandDto>>> loadCommands();
}
