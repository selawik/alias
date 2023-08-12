import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
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
