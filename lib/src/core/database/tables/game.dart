import 'package:alias/src/feature/game_settings/domain/entity/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/entity/command_move_selector_type.dart';
import 'package:drift/drift.dart';

@DataClassName('GameDbEntity')
class GameTable extends Table {
  IntColumn get gameId => integer().autoIncrement()();

  IntColumn get nextPlayingCommandId => integer()();

  IntColumn get categoryId => integer()();

  IntColumn get lastWordEnabled => intEnum<BinarySelectorMode>()();

  IntColumn get penaltyEnabled => intEnum<BinarySelectorMode>()();

  IntColumn get moveDuration => intEnum<CommandMoveMode>()();
}
