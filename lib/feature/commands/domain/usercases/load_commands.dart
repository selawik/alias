import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:alias/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadCommands {
  final CommandsRepository repository;

  LoadCommands({required this.repository});

  Future<Either<Failure, List<Command>>> execute() async {
    return await repository.loadCommands();
  }
}
