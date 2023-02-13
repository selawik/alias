import 'package:alias/core/database/database.dart' hide Category;
import 'package:alias/core/database/tables/game.dart';
import 'package:drift/drift.dart';

part 'game_dao.g.dart';

@DriftAccessor(tables: [GameTable])
class GameDao extends DatabaseAccessor<Database> with _$GameDaoMixin {
  GameDao(Database db) : super(db);

  Future<Game?> getUnfinishedGame() async {
    return await select(gameTable).getSingleOrNull();
  }

  Future<void> saveStartedGame(GameTableCompanion entity) async {
    await into(gameTable).insert(entity, mode: InsertMode.replace);
  }
}
