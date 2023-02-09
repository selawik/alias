// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  String get aliasedName => _alias ?? 'category_table';
  @override
  String get actualTableName => 'category_table';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String description;
  const Category({required this.id, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      id: Value(id),
      description: Value(description),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  Category copyWith({int? id, String? description}) => Category(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.description == this.description);
}

class CategoryTableCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> description;
  const CategoryTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.id = const Value.absent(),
    required String description,
  }) : description = Value(description);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int>? id, Value<String>? description}) {
    return CategoryTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $PlayedWordTable extends PlayedWord
    with TableInfo<$PlayedWordTable, PlayedWords> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlayedWordTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _playedWordIdMeta =
      const VerificationMeta('playedWordId');
  @override
  late final GeneratedColumn<int> playedWordId = GeneratedColumn<int>(
      'played_word_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [playedWordId, categoryId, name];
  @override
  String get aliasedName => _alias ?? 'played_word';
  @override
  String get actualTableName => 'played_word';
  @override
  VerificationContext validateIntegrity(Insertable<PlayedWords> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('played_word_id')) {
      context.handle(
          _playedWordIdMeta,
          playedWordId.isAcceptableOrUnknown(
              data['played_word_id']!, _playedWordIdMeta));
    } else if (isInserting) {
      context.missing(_playedWordIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  PlayedWords map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlayedWords(
      playedWordId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}played_word_id'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $PlayedWordTable createAlias(String alias) {
    return $PlayedWordTable(attachedDatabase, alias);
  }
}

class PlayedWords extends DataClass implements Insertable<PlayedWords> {
  final int playedWordId;
  final int categoryId;
  final String name;
  const PlayedWords(
      {required this.playedWordId,
      required this.categoryId,
      required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['played_word_id'] = Variable<int>(playedWordId);
    map['category_id'] = Variable<int>(categoryId);
    map['name'] = Variable<String>(name);
    return map;
  }

  PlayedWordCompanion toCompanion(bool nullToAbsent) {
    return PlayedWordCompanion(
      playedWordId: Value(playedWordId),
      categoryId: Value(categoryId),
      name: Value(name),
    );
  }

  factory PlayedWords.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlayedWords(
      playedWordId: serializer.fromJson<int>(json['playedWordId']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'playedWordId': serializer.toJson<int>(playedWordId),
      'categoryId': serializer.toJson<int>(categoryId),
      'name': serializer.toJson<String>(name),
    };
  }

  PlayedWords copyWith({int? playedWordId, int? categoryId, String? name}) =>
      PlayedWords(
        playedWordId: playedWordId ?? this.playedWordId,
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('PlayedWords(')
          ..write('playedWordId: $playedWordId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(playedWordId, categoryId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlayedWords &&
          other.playedWordId == this.playedWordId &&
          other.categoryId == this.categoryId &&
          other.name == this.name);
}

class PlayedWordCompanion extends UpdateCompanion<PlayedWords> {
  final Value<int> playedWordId;
  final Value<int> categoryId;
  final Value<String> name;
  const PlayedWordCompanion({
    this.playedWordId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
  });
  PlayedWordCompanion.insert({
    required int playedWordId,
    required int categoryId,
    required String name,
  })  : playedWordId = Value(playedWordId),
        categoryId = Value(categoryId),
        name = Value(name);
  static Insertable<PlayedWords> custom({
    Expression<int>? playedWordId,
    Expression<int>? categoryId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (playedWordId != null) 'played_word_id': playedWordId,
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
    });
  }

  PlayedWordCompanion copyWith(
      {Value<int>? playedWordId, Value<int>? categoryId, Value<String>? name}) {
    return PlayedWordCompanion(
      playedWordId: playedWordId ?? this.playedWordId,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (playedWordId.present) {
      map['played_word_id'] = Variable<int>(playedWordId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayedWordCompanion(')
          ..write('playedWordId: $playedWordId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $GameTableTable extends GameTable with TableInfo<$GameTableTable, Game> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GameTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _gameIdMeta = const VerificationMeta('gameId');
  @override
  late final GeneratedColumn<int> gameId = GeneratedColumn<int>(
      'game_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nextPlayingCommandIdMeta =
      const VerificationMeta('nextPlayingCommandId');
  @override
  late final GeneratedColumn<int> nextPlayingCommandId = GeneratedColumn<int>(
      'next_playing_command_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [gameId, nextPlayingCommandId];
  @override
  String get aliasedName => _alias ?? 'game_table';
  @override
  String get actualTableName => 'game_table';
  @override
  VerificationContext validateIntegrity(Insertable<Game> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('game_id')) {
      context.handle(_gameIdMeta,
          gameId.isAcceptableOrUnknown(data['game_id']!, _gameIdMeta));
    }
    if (data.containsKey('next_playing_command_id')) {
      context.handle(
          _nextPlayingCommandIdMeta,
          nextPlayingCommandId.isAcceptableOrUnknown(
              data['next_playing_command_id']!, _nextPlayingCommandIdMeta));
    } else if (isInserting) {
      context.missing(_nextPlayingCommandIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {gameId};
  @override
  Game map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Game(
      gameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}game_id'])!,
      nextPlayingCommandId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}next_playing_command_id'])!,
    );
  }

  @override
  $GameTableTable createAlias(String alias) {
    return $GameTableTable(attachedDatabase, alias);
  }
}

class Game extends DataClass implements Insertable<Game> {
  final int gameId;
  final int nextPlayingCommandId;
  const Game({required this.gameId, required this.nextPlayingCommandId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['game_id'] = Variable<int>(gameId);
    map['next_playing_command_id'] = Variable<int>(nextPlayingCommandId);
    return map;
  }

  GameTableCompanion toCompanion(bool nullToAbsent) {
    return GameTableCompanion(
      gameId: Value(gameId),
      nextPlayingCommandId: Value(nextPlayingCommandId),
    );
  }

  factory Game.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Game(
      gameId: serializer.fromJson<int>(json['gameId']),
      nextPlayingCommandId:
          serializer.fromJson<int>(json['nextPlayingCommandId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gameId': serializer.toJson<int>(gameId),
      'nextPlayingCommandId': serializer.toJson<int>(nextPlayingCommandId),
    };
  }

  Game copyWith({int? gameId, int? nextPlayingCommandId}) => Game(
        gameId: gameId ?? this.gameId,
        nextPlayingCommandId: nextPlayingCommandId ?? this.nextPlayingCommandId,
      );
  @override
  String toString() {
    return (StringBuffer('Game(')
          ..write('gameId: $gameId, ')
          ..write('nextPlayingCommandId: $nextPlayingCommandId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(gameId, nextPlayingCommandId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Game &&
          other.gameId == this.gameId &&
          other.nextPlayingCommandId == this.nextPlayingCommandId);
}

class GameTableCompanion extends UpdateCompanion<Game> {
  final Value<int> gameId;
  final Value<int> nextPlayingCommandId;
  const GameTableCompanion({
    this.gameId = const Value.absent(),
    this.nextPlayingCommandId = const Value.absent(),
  });
  GameTableCompanion.insert({
    this.gameId = const Value.absent(),
    required int nextPlayingCommandId,
  }) : nextPlayingCommandId = Value(nextPlayingCommandId);
  static Insertable<Game> custom({
    Expression<int>? gameId,
    Expression<int>? nextPlayingCommandId,
  }) {
    return RawValuesInsertable({
      if (gameId != null) 'game_id': gameId,
      if (nextPlayingCommandId != null)
        'next_playing_command_id': nextPlayingCommandId,
    });
  }

  GameTableCompanion copyWith(
      {Value<int>? gameId, Value<int>? nextPlayingCommandId}) {
    return GameTableCompanion(
      gameId: gameId ?? this.gameId,
      nextPlayingCommandId: nextPlayingCommandId ?? this.nextPlayingCommandId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gameId.present) {
      map['game_id'] = Variable<int>(gameId.value);
    }
    if (nextPlayingCommandId.present) {
      map['next_playing_command_id'] =
          Variable<int>(nextPlayingCommandId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameTableCompanion(')
          ..write('gameId: $gameId, ')
          ..write('nextPlayingCommandId: $nextPlayingCommandId')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $PlayedWordTable playedWord = $PlayedWordTable(this);
  late final $GameTableTable gameTable = $GameTableTable(this);
  late final PlayedWordDao playedWordDao = PlayedWordDao(this as Database);
  late final GameDao gameDao = GameDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categoryTable, playedWord, gameTable];
}
