import 'package:alias/src/core/database/database.dart';
import 'package:alias/src/core/database/tables/game.dart';
import 'package:drift/drift.dart';

part 'game_dao.g.dart';

@DriftAccessor(tables: [GameTable])
class GameDao extends DatabaseAccessor<Database> with _$GameDaoMixin {
  GameDao(Database db) : super(db);

  Future<GameDbEntity?> getUnfinishedGame() async {
    final games = await select(gameTable).get();

    if (games.isEmpty) {
      return null;
    }

    return games.last;
  }

  Future<void> saveStartedGame(GameTableCompanion entity) async {
    await into(gameTable).insert(entity, mode: InsertMode.replace);
  }

  Future<void> deleteUnfinishedGame() async {
    await delete(gameTable).go();
  }
}
