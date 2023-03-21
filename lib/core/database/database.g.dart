// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
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
  List<GeneratedColumn> get $columns => [categoryId, name];
  @override
  String get aliasedName => _alias ?? 'category_table';
  @override
  String get actualTableName => 'category_table';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
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
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int categoryId;
  final String name;
  const Category({required this.categoryId, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category_id'] = Variable<int>(categoryId);
    map['name'] = Variable<String>(name);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      categoryId: Value(categoryId),
      name: Value(name),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      categoryId: serializer.fromJson<int>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryId': serializer.toJson<int>(categoryId),
      'name': serializer.toJson<String>(name),
    };
  }

  Category copyWith({int? categoryId, String? name}) => Category(
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(categoryId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.categoryId == this.categoryId &&
          other.name == this.name);
}

class CategoryTableCompanion extends UpdateCompanion<Category> {
  final Value<int> categoryId;
  final Value<String> name;
  const CategoryTableCompanion({
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    required int categoryId,
    required String name,
  })  : categoryId = Value(categoryId),
        name = Value(name);
  static Insertable<Category> custom({
    Expression<int>? categoryId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int>? categoryId, Value<String>? name}) {
    return CategoryTableCompanion(
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
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
    return (StringBuffer('CategoryTableCompanion(')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
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
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastWordEnabledMeta =
      const VerificationMeta('lastWordEnabled');
  @override
  late final GeneratedColumnWithTypeConverter<BinarySelectorMode, int>
      lastWordEnabled = GeneratedColumn<int>(
              'last_word_enabled', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BinarySelectorMode>(
              $GameTableTable.$converterlastWordEnabled);
  static const VerificationMeta _penaltyEnabledMeta =
      const VerificationMeta('penaltyEnabled');
  @override
  late final GeneratedColumnWithTypeConverter<BinarySelectorMode, int>
      penaltyEnabled = GeneratedColumn<int>(
              'penalty_enabled', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BinarySelectorMode>(
              $GameTableTable.$converterpenaltyEnabled);
  static const VerificationMeta _moveDurationMeta =
      const VerificationMeta('moveDuration');
  @override
  late final GeneratedColumnWithTypeConverter<CommandMoveMode, int>
      moveDuration = GeneratedColumn<int>('move_duration', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<CommandMoveMode>(
              $GameTableTable.$convertermoveDuration);
  @override
  List<GeneratedColumn> get $columns => [
        gameId,
        nextPlayingCommandId,
        categoryId,
        lastWordEnabled,
        penaltyEnabled,
        moveDuration
      ];
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
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    context.handle(_lastWordEnabledMeta, const VerificationResult.success());
    context.handle(_penaltyEnabledMeta, const VerificationResult.success());
    context.handle(_moveDurationMeta, const VerificationResult.success());
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
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      lastWordEnabled: $GameTableTable.$converterlastWordEnabled.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}last_word_enabled'])!),
      penaltyEnabled: $GameTableTable.$converterpenaltyEnabled.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}penalty_enabled'])!),
      moveDuration: $GameTableTable.$convertermoveDuration.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}move_duration'])!),
    );
  }

  @override
  $GameTableTable createAlias(String alias) {
    return $GameTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BinarySelectorMode, int, int>
      $converterlastWordEnabled =
      const EnumIndexConverter<BinarySelectorMode>(BinarySelectorMode.values);
  static JsonTypeConverter2<BinarySelectorMode, int, int>
      $converterpenaltyEnabled =
      const EnumIndexConverter<BinarySelectorMode>(BinarySelectorMode.values);
  static JsonTypeConverter2<CommandMoveMode, int, int> $convertermoveDuration =
      const EnumIndexConverter<CommandMoveMode>(CommandMoveMode.values);
}

class Game extends DataClass implements Insertable<Game> {
  final int gameId;
  final int nextPlayingCommandId;
  final int categoryId;
  final BinarySelectorMode lastWordEnabled;
  final BinarySelectorMode penaltyEnabled;
  final CommandMoveMode moveDuration;
  const Game(
      {required this.gameId,
      required this.nextPlayingCommandId,
      required this.categoryId,
      required this.lastWordEnabled,
      required this.penaltyEnabled,
      required this.moveDuration});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['game_id'] = Variable<int>(gameId);
    map['next_playing_command_id'] = Variable<int>(nextPlayingCommandId);
    map['category_id'] = Variable<int>(categoryId);
    {
      final converter = $GameTableTable.$converterlastWordEnabled;
      map['last_word_enabled'] =
          Variable<int>(converter.toSql(lastWordEnabled));
    }
    {
      final converter = $GameTableTable.$converterpenaltyEnabled;
      map['penalty_enabled'] = Variable<int>(converter.toSql(penaltyEnabled));
    }
    {
      final converter = $GameTableTable.$convertermoveDuration;
      map['move_duration'] = Variable<int>(converter.toSql(moveDuration));
    }
    return map;
  }

  GameTableCompanion toCompanion(bool nullToAbsent) {
    return GameTableCompanion(
      gameId: Value(gameId),
      nextPlayingCommandId: Value(nextPlayingCommandId),
      categoryId: Value(categoryId),
      lastWordEnabled: Value(lastWordEnabled),
      penaltyEnabled: Value(penaltyEnabled),
      moveDuration: Value(moveDuration),
    );
  }

  factory Game.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Game(
      gameId: serializer.fromJson<int>(json['gameId']),
      nextPlayingCommandId:
          serializer.fromJson<int>(json['nextPlayingCommandId']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      lastWordEnabled: $GameTableTable.$converterlastWordEnabled
          .fromJson(serializer.fromJson<int>(json['lastWordEnabled'])),
      penaltyEnabled: $GameTableTable.$converterpenaltyEnabled
          .fromJson(serializer.fromJson<int>(json['penaltyEnabled'])),
      moveDuration: $GameTableTable.$convertermoveDuration
          .fromJson(serializer.fromJson<int>(json['moveDuration'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gameId': serializer.toJson<int>(gameId),
      'nextPlayingCommandId': serializer.toJson<int>(nextPlayingCommandId),
      'categoryId': serializer.toJson<int>(categoryId),
      'lastWordEnabled': serializer.toJson<int>(
          $GameTableTable.$converterlastWordEnabled.toJson(lastWordEnabled)),
      'penaltyEnabled': serializer.toJson<int>(
          $GameTableTable.$converterpenaltyEnabled.toJson(penaltyEnabled)),
      'moveDuration': serializer.toJson<int>(
          $GameTableTable.$convertermoveDuration.toJson(moveDuration)),
    };
  }

  Game copyWith(
          {int? gameId,
          int? nextPlayingCommandId,
          int? categoryId,
          BinarySelectorMode? lastWordEnabled,
          BinarySelectorMode? penaltyEnabled,
          CommandMoveMode? moveDuration}) =>
      Game(
        gameId: gameId ?? this.gameId,
        nextPlayingCommandId: nextPlayingCommandId ?? this.nextPlayingCommandId,
        categoryId: categoryId ?? this.categoryId,
        lastWordEnabled: lastWordEnabled ?? this.lastWordEnabled,
        penaltyEnabled: penaltyEnabled ?? this.penaltyEnabled,
        moveDuration: moveDuration ?? this.moveDuration,
      );
  @override
  String toString() {
    return (StringBuffer('Game(')
          ..write('gameId: $gameId, ')
          ..write('nextPlayingCommandId: $nextPlayingCommandId, ')
          ..write('categoryId: $categoryId, ')
          ..write('lastWordEnabled: $lastWordEnabled, ')
          ..write('penaltyEnabled: $penaltyEnabled, ')
          ..write('moveDuration: $moveDuration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(gameId, nextPlayingCommandId, categoryId,
      lastWordEnabled, penaltyEnabled, moveDuration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Game &&
          other.gameId == this.gameId &&
          other.nextPlayingCommandId == this.nextPlayingCommandId &&
          other.categoryId == this.categoryId &&
          other.lastWordEnabled == this.lastWordEnabled &&
          other.penaltyEnabled == this.penaltyEnabled &&
          other.moveDuration == this.moveDuration);
}

class GameTableCompanion extends UpdateCompanion<Game> {
  final Value<int> gameId;
  final Value<int> nextPlayingCommandId;
  final Value<int> categoryId;
  final Value<BinarySelectorMode> lastWordEnabled;
  final Value<BinarySelectorMode> penaltyEnabled;
  final Value<CommandMoveMode> moveDuration;
  const GameTableCompanion({
    this.gameId = const Value.absent(),
    this.nextPlayingCommandId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.lastWordEnabled = const Value.absent(),
    this.penaltyEnabled = const Value.absent(),
    this.moveDuration = const Value.absent(),
  });
  GameTableCompanion.insert({
    this.gameId = const Value.absent(),
    required int nextPlayingCommandId,
    required int categoryId,
    required BinarySelectorMode lastWordEnabled,
    required BinarySelectorMode penaltyEnabled,
    required CommandMoveMode moveDuration,
  })  : nextPlayingCommandId = Value(nextPlayingCommandId),
        categoryId = Value(categoryId),
        lastWordEnabled = Value(lastWordEnabled),
        penaltyEnabled = Value(penaltyEnabled),
        moveDuration = Value(moveDuration);
  static Insertable<Game> custom({
    Expression<int>? gameId,
    Expression<int>? nextPlayingCommandId,
    Expression<int>? categoryId,
    Expression<int>? lastWordEnabled,
    Expression<int>? penaltyEnabled,
    Expression<int>? moveDuration,
  }) {
    return RawValuesInsertable({
      if (gameId != null) 'game_id': gameId,
      if (nextPlayingCommandId != null)
        'next_playing_command_id': nextPlayingCommandId,
      if (categoryId != null) 'category_id': categoryId,
      if (lastWordEnabled != null) 'last_word_enabled': lastWordEnabled,
      if (penaltyEnabled != null) 'penalty_enabled': penaltyEnabled,
      if (moveDuration != null) 'move_duration': moveDuration,
    });
  }

  GameTableCompanion copyWith(
      {Value<int>? gameId,
      Value<int>? nextPlayingCommandId,
      Value<int>? categoryId,
      Value<BinarySelectorMode>? lastWordEnabled,
      Value<BinarySelectorMode>? penaltyEnabled,
      Value<CommandMoveMode>? moveDuration}) {
    return GameTableCompanion(
      gameId: gameId ?? this.gameId,
      nextPlayingCommandId: nextPlayingCommandId ?? this.nextPlayingCommandId,
      categoryId: categoryId ?? this.categoryId,
      lastWordEnabled: lastWordEnabled ?? this.lastWordEnabled,
      penaltyEnabled: penaltyEnabled ?? this.penaltyEnabled,
      moveDuration: moveDuration ?? this.moveDuration,
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
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (lastWordEnabled.present) {
      final converter = $GameTableTable.$converterlastWordEnabled;
      map['last_word_enabled'] =
          Variable<int>(converter.toSql(lastWordEnabled.value));
    }
    if (penaltyEnabled.present) {
      final converter = $GameTableTable.$converterpenaltyEnabled;
      map['penalty_enabled'] =
          Variable<int>(converter.toSql(penaltyEnabled.value));
    }
    if (moveDuration.present) {
      final converter = $GameTableTable.$convertermoveDuration;
      map['move_duration'] = Variable<int>(converter.toSql(moveDuration.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameTableCompanion(')
          ..write('gameId: $gameId, ')
          ..write('nextPlayingCommandId: $nextPlayingCommandId, ')
          ..write('categoryId: $categoryId, ')
          ..write('lastWordEnabled: $lastWordEnabled, ')
          ..write('penaltyEnabled: $penaltyEnabled, ')
          ..write('moveDuration: $moveDuration')
          ..write(')'))
        .toString();
  }
}

class $WordsTableTable extends WordsTable
    with TableInfo<$WordsTableTable, Word> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _wordIdMeta = const VerificationMeta('wordId');
  @override
  late final GeneratedColumn<int> wordId = GeneratedColumn<int>(
      'word_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  List<GeneratedColumn> get $columns => [wordId, categoryId, name];
  @override
  String get aliasedName => _alias ?? 'words_table';
  @override
  String get actualTableName => 'words_table';
  @override
  VerificationContext validateIntegrity(Insertable<Word> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('word_id')) {
      context.handle(_wordIdMeta,
          wordId.isAcceptableOrUnknown(data['word_id']!, _wordIdMeta));
    } else if (isInserting) {
      context.missing(_wordIdMeta);
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
  Word map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Word(
      wordId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}word_id'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $WordsTableTable createAlias(String alias) {
    return $WordsTableTable(attachedDatabase, alias);
  }
}

class Word extends DataClass implements Insertable<Word> {
  final int wordId;
  final int categoryId;
  final String name;
  const Word(
      {required this.wordId, required this.categoryId, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['word_id'] = Variable<int>(wordId);
    map['category_id'] = Variable<int>(categoryId);
    map['name'] = Variable<String>(name);
    return map;
  }

  WordsTableCompanion toCompanion(bool nullToAbsent) {
    return WordsTableCompanion(
      wordId: Value(wordId),
      categoryId: Value(categoryId),
      name: Value(name),
    );
  }

  factory Word.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Word(
      wordId: serializer.fromJson<int>(json['wordId']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wordId': serializer.toJson<int>(wordId),
      'categoryId': serializer.toJson<int>(categoryId),
      'name': serializer.toJson<String>(name),
    };
  }

  Word copyWith({int? wordId, int? categoryId, String? name}) => Word(
        wordId: wordId ?? this.wordId,
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('wordId: $wordId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(wordId, categoryId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Word &&
          other.wordId == this.wordId &&
          other.categoryId == this.categoryId &&
          other.name == this.name);
}

class WordsTableCompanion extends UpdateCompanion<Word> {
  final Value<int> wordId;
  final Value<int> categoryId;
  final Value<String> name;
  const WordsTableCompanion({
    this.wordId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
  });
  WordsTableCompanion.insert({
    required int wordId,
    required int categoryId,
    required String name,
  })  : wordId = Value(wordId),
        categoryId = Value(categoryId),
        name = Value(name);
  static Insertable<Word> custom({
    Expression<int>? wordId,
    Expression<int>? categoryId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (wordId != null) 'word_id': wordId,
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
    });
  }

  WordsTableCompanion copyWith(
      {Value<int>? wordId, Value<int>? categoryId, Value<String>? name}) {
    return WordsTableCompanion(
      wordId: wordId ?? this.wordId,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (wordId.present) {
      map['word_id'] = Variable<int>(wordId.value);
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
    return (StringBuffer('WordsTableCompanion(')
          ..write('wordId: $wordId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $PlayedWordTable playedWord = $PlayedWordTable(this);
  late final $GameTableTable gameTable = $GameTableTable(this);
  late final $WordsTableTable wordsTable = $WordsTableTable(this);
  late final PlayedWordDao playedWordDao = PlayedWordDao(this as Database);
  late final GameDao gameDao = GameDao(this as Database);
  late final CategoryDao categoryDao = CategoryDao(this as Database);
  late final WordDao wordDao = WordDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categoryTable, playedWord, gameTable, wordsTable];
}
