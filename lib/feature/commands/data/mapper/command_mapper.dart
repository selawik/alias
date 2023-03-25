import 'package:alias/core/mapper/mapper.dart';
import 'package:alias/feature/categories/data/models/category_dto.dart';
import 'package:alias/feature/categories/domain/models/category.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommandMapper implements Mapper<Command, CommandDto> {
  @override
  Command mapToModel(CommandDto type) {
    return Command(
      name: type.name,
      commandId: type.commandId,
    );
  }

  @override
  CommandDto mapFromModel(Command type) {
    return CommandDto(
      name: type.name,
      commandId: type.commandId,
    );
  }
}
