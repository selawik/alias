// To open the database, add these imports to the existing file defining the
// database class. They are used to open the database.
import 'dart:io';

import 'package:alias/core/database/dao/category_dao.dart';
import 'package:alias/core/database/dao/game_dao.dart';
import 'package:alias/core/database/dao/played_word_dao.dart';
import 'package:alias/core/database/tables/category.dart';
import 'package:alias/core/database/tables/game.dart';
import 'package:alias/core/database/tables/played_word.dart';
import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(tables: [CategoryTable, PlayedWord, GameTable], daos: [PlayedWordDao, GameDao, CategoryDao])
@singleton
class Database extends _$Database{
  // we tell the database where to store the data with this constructor
  Database() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
