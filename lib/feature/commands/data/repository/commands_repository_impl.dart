import 'package:alias/core/error/failure.dart';
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart';
import 'package:alias/feature/commands/data/mapper/command_mapper.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:alias/feature/commands/domain/repository/commands_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommandsRepository)
class CommandsRepositoryImpl implements CommandsRepository {
  final CommandsDataSource _dataSource;
  final CommandMapper _commandMapper;

  CommandsRepositoryImpl({
    required CommandsDataSource dataSource,
    required CommandMapper commandMapper,
  })  : _dataSource = dataSource,
        _commandMapper = commandMapper;

  @override
  Future<Either<Failure, List<Command>>> loadCommands() async {
    try {
      final result = await _dataSource.getAllCommands();

      if (result.isEmpty) {
        return const Left(NoDataFailure('There is no commands'));
      }

      return Right(
          result.map((dto) => _commandMapper.mapToModel(dto)).toList());
    } catch (e, stacktrace) {
      print(e.toString());
      print(stacktrace);
      return const Left(ServerFailure('Error'));
    }
  }
}
