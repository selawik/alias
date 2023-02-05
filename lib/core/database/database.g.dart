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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [playedWordId, name];
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
  final String name;
  const PlayedWords({required this.playedWordId, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['played_word_id'] = Variable<int>(playedWordId);
    map['name'] = Variable<String>(name);
    return map;
  }

  PlayedWordCompanion toCompanion(bool nullToAbsent) {
    return PlayedWordCompanion(
      playedWordId: Value(playedWordId),
      name: Value(name),
    );
  }

  factory PlayedWords.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlayedWords(
      playedWordId: serializer.fromJson<int>(json['playedWordId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'playedWordId': serializer.toJson<int>(playedWordId),
      'name': serializer.toJson<String>(name),
    };
  }

  PlayedWords copyWith({int? playedWordId, String? name}) => PlayedWords(
        playedWordId: playedWordId ?? this.playedWordId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('PlayedWords(')
          ..write('playedWordId: $playedWordId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(playedWordId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlayedWords &&
          other.playedWordId == this.playedWordId &&
          other.name == this.name);
}

class PlayedWordCompanion extends UpdateCompanion<PlayedWords> {
  final Value<int> playedWordId;
  final Value<String> name;
  const PlayedWordCompanion({
    this.playedWordId = const Value.absent(),
    this.name = const Value.absent(),
  });
  PlayedWordCompanion.insert({
    required int playedWordId,
    required String name,
  })  : playedWordId = Value(playedWordId),
        name = Value(name);
  static Insertable<PlayedWords> custom({
    Expression<int>? playedWordId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (playedWordId != null) 'played_word_id': playedWordId,
      if (name != null) 'name': name,
    });
  }

  PlayedWordCompanion copyWith(
      {Value<int>? playedWordId, Value<String>? name}) {
    return PlayedWordCompanion(
      playedWordId: playedWordId ?? this.playedWordId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (playedWordId.present) {
      map['played_word_id'] = Variable<int>(playedWordId.value);
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
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $PlayedWordTable playedWord = $PlayedWordTable(this);
  late final PlayedWordDao playedWordDao = PlayedWordDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categoryTable, playedWord];
}
