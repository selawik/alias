import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommandsRepository)
class CommandsRepositoryImpl implements CommandsRepository {
  final CommandsDataSource dataSource;

  CommandsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<CommandDto>>> loadCommands() async {
    try {
      final result = await dataSource.getAllCommands();

      if (result.isEmpty) {
        return const Left(NoDataFailure('There is no commands'));
      }

      return Right(result);
    } catch (e, stacktrace) {
      print(e.toString());
      print(stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
