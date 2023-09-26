import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/commands/data/models/command_dto.dart';
import 'package:alias/src/feature/commands/domain/models/command_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommandMapper implements Mapper<CommandEntity, CommandDto> {
  @override
  CommandEntity mapToModel(CommandDto type) {
    return CommandEntity(
      name: type.name,
      commandId: type.commandId,
    );
  }

  @override
  CommandDto mapFromModel(CommandEntity type) {
    return CommandDto(
      name: type.name,
      commandId: type.commandId,
    );
  }
}
