import 'package:alias/src/core/mapper/mapper.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommandMapper implements Mapper<CommandEntity, CommandDto> {
  @override
  CommandEntity mapToEntity(CommandDto type) {
    return CommandEntity(
      name: type.name,
      commandId: type.commandId,
    );
  }

  @override
  CommandDto mapToDto(CommandEntity type) {
    return CommandDto(
      name: type.name,
      commandId: type.commandId,
    );
  }
}
