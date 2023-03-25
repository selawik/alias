import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadCommands {
  final CommandsRepository repository;

  LoadCommands({required this.repository});

  Future<Either<Failure, List<CommandDto>>> execute() async {
    return await repository.loadCommands();
  }
}
