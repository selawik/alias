import 'package:alias/core/database/database.dart';
import 'package:alias/core/database/tables/command.dart';
import 'package:drift/drift.dart';

part 'command_dao.g.dart';

@DriftAccessor(tables: [CommandTable])
class CommandDao extends DatabaseAccessor<Database> with _$CommandDaoMixin {
  CommandDao(Database db) : super(db);

  Future<int?> getLastCommandId() async {
    var query = select(commandTable)
      ..orderBy([(table) => OrderingTerm(expression: table.commandId)]);

    var commands = await query.get();

    if (commands.isEmpty) {
      return null;
    }

    return commands.last.commandId;
  }

  Future<void> saveCommands(Iterable<CommandTableCompanion> categories) async {
    await batch((batch) => batch.insertAll(commandTable, categories));
  }

  Future<Iterable<CommandDbEntity>> getCommands() async {
    var query = select(commandTable);

    return await query.get();
  }
}
