import 'package:drift/drift.dart';

import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';

@DataClassName('Game')
class GameTable extends Table {
  IntColumn get gameId => integer().autoIncrement()();

  IntColumn get nextPlayingCommandId => integer()();

  IntColumn get categoryId => integer()();

  BoolColumn get lastWordEnabled => boolean()();

  BoolColumn get penaltyEnabled => boolean()();

  IntColumn get moveDuration => intEnum<CommandMoveMode>()();
}