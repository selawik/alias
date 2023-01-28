// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alias_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AliasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(List<Command> commands) commandsFormed,
    required TResult Function(CommandMoveMode moveTime,
            BinarySelectorMode lastWordMode, BinarySelectorMode penaltyMode)
        gameSettingsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(List<Command> commands)? commandsFormed,
    TResult? Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(List<Command> commands)? commandsFormed,
    TResult Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_CommandsFormed value) commandsFormed,
    required TResult Function(_GameSettingsSelected value) gameSettingsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_CommandsFormed value)? commandsFormed,
    TResult? Function(_GameSettingsSelected value)? gameSettingsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_CommandsFormed value)? commandsFormed,
    TResult Function(_GameSettingsSelected value)? gameSettingsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AliasEventCopyWith<$Res> {
  factory $AliasEventCopyWith(
          AliasEvent value, $Res Function(AliasEvent) then) =
      _$AliasEventCopyWithImpl<$Res, AliasEvent>;
}

/// @nodoc
class _$AliasEventCopyWithImpl<$Res, $Val extends AliasEvent>
    implements $AliasEventCopyWith<$Res> {
  _$AliasEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AliasEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AliasEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(List<Command> commands) commandsFormed,
    required TResult Function(CommandMoveMode moveTime,
            BinarySelectorMode lastWordMode, BinarySelectorMode penaltyMode)
        gameSettingsSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(List<Command> commands)? commandsFormed,
    TResult? Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(List<Command> commands)? commandsFormed,
    TResult Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_CommandsFormed value) commandsFormed,
    required TResult Function(_GameSettingsSelected value) gameSettingsSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_CommandsFormed value)? commandsFormed,
    TResult? Function(_GameSettingsSelected value)? gameSettingsSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_CommandsFormed value)? commandsFormed,
    TResult Function(_GameSettingsSelected value)? gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AliasEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CategorySelectedCopyWith<$Res> {
  factory _$$_CategorySelectedCopyWith(
          _$_CategorySelected value, $Res Function(_$_CategorySelected) then) =
      __$$_CategorySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategorySelectedCopyWithImpl<$Res>
    extends _$AliasEventCopyWithImpl<$Res, _$_CategorySelected>
    implements _$$_CategorySelectedCopyWith<$Res> {
  __$$_CategorySelectedCopyWithImpl(
      _$_CategorySelected _value, $Res Function(_$_CategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_CategorySelected(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_CategorySelected implements _CategorySelected {
  const _$_CategorySelected({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'AliasEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySelected &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      __$$_CategorySelectedCopyWithImpl<_$_CategorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(List<Command> commands) commandsFormed,
    required TResult Function(CommandMoveMode moveTime,
            BinarySelectorMode lastWordMode, BinarySelectorMode penaltyMode)
        gameSettingsSelected,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(List<Command> commands)? commandsFormed,
    TResult? Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(List<Command> commands)? commandsFormed,
    TResult Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_CommandsFormed value) commandsFormed,
    required TResult Function(_GameSettingsSelected value) gameSettingsSelected,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_CommandsFormed value)? commandsFormed,
    TResult? Function(_GameSettingsSelected value)? gameSettingsSelected,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_CommandsFormed value)? commandsFormed,
    TResult Function(_GameSettingsSelected value)? gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements AliasEvent {
  const factory _CategorySelected({required final Category category}) =
      _$_CategorySelected;

  Category get category;
  @JsonKey(ignore: true)
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommandsFormedCopyWith<$Res> {
  factory _$$_CommandsFormedCopyWith(
          _$_CommandsFormed value, $Res Function(_$_CommandsFormed) then) =
      __$$_CommandsFormedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Command> commands});
}

/// @nodoc
class __$$_CommandsFormedCopyWithImpl<$Res>
    extends _$AliasEventCopyWithImpl<$Res, _$_CommandsFormed>
    implements _$$_CommandsFormedCopyWith<$Res> {
  __$$_CommandsFormedCopyWithImpl(
      _$_CommandsFormed _value, $Res Function(_$_CommandsFormed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commands = null,
  }) {
    return _then(_$_CommandsFormed(
      commands: null == commands
          ? _value._commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<Command>,
    ));
  }
}

/// @nodoc

class _$_CommandsFormed implements _CommandsFormed {
  const _$_CommandsFormed({required final List<Command> commands})
      : _commands = commands;

  final List<Command> _commands;
  @override
  List<Command> get commands {
    if (_commands is EqualUnmodifiableListView) return _commands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commands);
  }

  @override
  String toString() {
    return 'AliasEvent.commandsFormed(commands: $commands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandsFormed &&
            const DeepCollectionEquality().equals(other._commands, _commands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_commands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandsFormedCopyWith<_$_CommandsFormed> get copyWith =>
      __$$_CommandsFormedCopyWithImpl<_$_CommandsFormed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(List<Command> commands) commandsFormed,
    required TResult Function(CommandMoveMode moveTime,
            BinarySelectorMode lastWordMode, BinarySelectorMode penaltyMode)
        gameSettingsSelected,
  }) {
    return commandsFormed(commands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(List<Command> commands)? commandsFormed,
    TResult? Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
  }) {
    return commandsFormed?.call(commands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(List<Command> commands)? commandsFormed,
    TResult Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (commandsFormed != null) {
      return commandsFormed(commands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_CommandsFormed value) commandsFormed,
    required TResult Function(_GameSettingsSelected value) gameSettingsSelected,
  }) {
    return commandsFormed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_CommandsFormed value)? commandsFormed,
    TResult? Function(_GameSettingsSelected value)? gameSettingsSelected,
  }) {
    return commandsFormed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_CommandsFormed value)? commandsFormed,
    TResult Function(_GameSettingsSelected value)? gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (commandsFormed != null) {
      return commandsFormed(this);
    }
    return orElse();
  }
}

abstract class _CommandsFormed implements AliasEvent {
  const factory _CommandsFormed({required final List<Command> commands}) =
      _$_CommandsFormed;

  List<Command> get commands;
  @JsonKey(ignore: true)
  _$$_CommandsFormedCopyWith<_$_CommandsFormed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GameSettingsSelectedCopyWith<$Res> {
  factory _$$_GameSettingsSelectedCopyWith(_$_GameSettingsSelected value,
          $Res Function(_$_GameSettingsSelected) then) =
      __$$_GameSettingsSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CommandMoveMode moveTime,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode});
}

/// @nodoc
class __$$_GameSettingsSelectedCopyWithImpl<$Res>
    extends _$AliasEventCopyWithImpl<$Res, _$_GameSettingsSelected>
    implements _$$_GameSettingsSelectedCopyWith<$Res> {
  __$$_GameSettingsSelectedCopyWithImpl(_$_GameSettingsSelected _value,
      $Res Function(_$_GameSettingsSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveTime = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
  }) {
    return _then(_$_GameSettingsSelected(
      moveTime: null == moveTime
          ? _value.moveTime
          : moveTime // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
      lastWordMode: null == lastWordMode
          ? _value.lastWordMode
          : lastWordMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      penaltyMode: null == penaltyMode
          ? _value.penaltyMode
          : penaltyMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
    ));
  }
}

/// @nodoc

class _$_GameSettingsSelected implements _GameSettingsSelected {
  const _$_GameSettingsSelected(
      {required this.moveTime,
      required this.lastWordMode,
      required this.penaltyMode});

  @override
  final CommandMoveMode moveTime;
  @override
  final BinarySelectorMode lastWordMode;
  @override
  final BinarySelectorMode penaltyMode;

  @override
  String toString() {
    return 'AliasEvent.gameSettingsSelected(moveTime: $moveTime, lastWordMode: $lastWordMode, penaltyMode: $penaltyMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameSettingsSelected &&
            (identical(other.moveTime, moveTime) ||
                other.moveTime == moveTime) &&
            (identical(other.lastWordMode, lastWordMode) ||
                other.lastWordMode == lastWordMode) &&
            (identical(other.penaltyMode, penaltyMode) ||
                other.penaltyMode == penaltyMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, moveTime, lastWordMode, penaltyMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameSettingsSelectedCopyWith<_$_GameSettingsSelected> get copyWith =>
      __$$_GameSettingsSelectedCopyWithImpl<_$_GameSettingsSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) categorySelected,
    required TResult Function(List<Command> commands) commandsFormed,
    required TResult Function(CommandMoveMode moveTime,
            BinarySelectorMode lastWordMode, BinarySelectorMode penaltyMode)
        gameSettingsSelected,
  }) {
    return gameSettingsSelected(moveTime, lastWordMode, penaltyMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(List<Command> commands)? commandsFormed,
    TResult? Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
  }) {
    return gameSettingsSelected?.call(moveTime, lastWordMode, penaltyMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? categorySelected,
    TResult Function(List<Command> commands)? commandsFormed,
    TResult Function(CommandMoveMode moveTime, BinarySelectorMode lastWordMode,
            BinarySelectorMode penaltyMode)?
        gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (gameSettingsSelected != null) {
      return gameSettingsSelected(moveTime, lastWordMode, penaltyMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_CommandsFormed value) commandsFormed,
    required TResult Function(_GameSettingsSelected value) gameSettingsSelected,
  }) {
    return gameSettingsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_CommandsFormed value)? commandsFormed,
    TResult? Function(_GameSettingsSelected value)? gameSettingsSelected,
  }) {
    return gameSettingsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_CommandsFormed value)? commandsFormed,
    TResult Function(_GameSettingsSelected value)? gameSettingsSelected,
    required TResult orElse(),
  }) {
    if (gameSettingsSelected != null) {
      return gameSettingsSelected(this);
    }
    return orElse();
  }
}

abstract class _GameSettingsSelected implements AliasEvent {
  const factory _GameSettingsSelected(
      {required final CommandMoveMode moveTime,
      required final BinarySelectorMode lastWordMode,
      required final BinarySelectorMode penaltyMode}) = _$_GameSettingsSelected;

  CommandMoveMode get moveTime;
  BinarySelectorMode get lastWordMode;
  BinarySelectorMode get penaltyMode;
  @JsonKey(ignore: true)
  _$$_GameSettingsSelectedCopyWith<_$_GameSettingsSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AliasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSettings gameSettings, List<Command> commands)
        gameIsLoading,
    required TResult Function() gameLoadingError,
    required TResult Function(GameSettings gameSettings, List<Word> words)
        gameIsReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult? Function()? gameLoadingError,
    TResult? Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult Function()? gameLoadingError,
    TResult Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameIsLoading value) gameIsLoading,
    required TResult Function(_GameLoadingError value) gameLoadingError,
    required TResult Function(_GameIsReady value) gameIsReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameIsLoading value)? gameIsLoading,
    TResult? Function(_GameLoadingError value)? gameLoadingError,
    TResult? Function(_GameIsReady value)? gameIsReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameIsLoading value)? gameIsLoading,
    TResult Function(_GameLoadingError value)? gameLoadingError,
    TResult Function(_GameIsReady value)? gameIsReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AliasStateCopyWith<$Res> {
  factory $AliasStateCopyWith(
          AliasState value, $Res Function(AliasState) then) =
      _$AliasStateCopyWithImpl<$Res, AliasState>;
}

/// @nodoc
class _$AliasStateCopyWithImpl<$Res, $Val extends AliasState>
    implements $AliasStateCopyWith<$Res> {
  _$AliasStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AliasStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AliasState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSettings gameSettings, List<Command> commands)
        gameIsLoading,
    required TResult Function() gameLoadingError,
    required TResult Function(GameSettings gameSettings, List<Word> words)
        gameIsReady,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult? Function()? gameLoadingError,
    TResult? Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult Function()? gameLoadingError,
    TResult Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameIsLoading value) gameIsLoading,
    required TResult Function(_GameLoadingError value) gameLoadingError,
    required TResult Function(_GameIsReady value) gameIsReady,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameIsLoading value)? gameIsLoading,
    TResult? Function(_GameLoadingError value)? gameLoadingError,
    TResult? Function(_GameIsReady value)? gameIsReady,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameIsLoading value)? gameIsLoading,
    TResult Function(_GameLoadingError value)? gameLoadingError,
    TResult Function(_GameIsReady value)? gameIsReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AliasState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_GameIsLoadingCopyWith<$Res> {
  factory _$$_GameIsLoadingCopyWith(
          _$_GameIsLoading value, $Res Function(_$_GameIsLoading) then) =
      __$$_GameIsLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({GameSettings gameSettings, List<Command> commands});
}

/// @nodoc
class __$$_GameIsLoadingCopyWithImpl<$Res>
    extends _$AliasStateCopyWithImpl<$Res, _$_GameIsLoading>
    implements _$$_GameIsLoadingCopyWith<$Res> {
  __$$_GameIsLoadingCopyWithImpl(
      _$_GameIsLoading _value, $Res Function(_$_GameIsLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
    Object? commands = null,
  }) {
    return _then(_$_GameIsLoading(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
      commands: null == commands
          ? _value._commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<Command>,
    ));
  }
}

/// @nodoc

class _$_GameIsLoading implements _GameIsLoading {
  const _$_GameIsLoading(
      {required this.gameSettings, required final List<Command> commands})
      : _commands = commands;

  @override
  final GameSettings gameSettings;
  final List<Command> _commands;
  @override
  List<Command> get commands {
    if (_commands is EqualUnmodifiableListView) return _commands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commands);
  }

  @override
  String toString() {
    return 'AliasState.gameIsLoading(gameSettings: $gameSettings, commands: $commands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameIsLoading &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings) &&
            const DeepCollectionEquality().equals(other._commands, _commands));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings,
      const DeepCollectionEquality().hash(_commands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameIsLoadingCopyWith<_$_GameIsLoading> get copyWith =>
      __$$_GameIsLoadingCopyWithImpl<_$_GameIsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSettings gameSettings, List<Command> commands)
        gameIsLoading,
    required TResult Function() gameLoadingError,
    required TResult Function(GameSettings gameSettings, List<Word> words)
        gameIsReady,
  }) {
    return gameIsLoading(gameSettings, commands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult? Function()? gameLoadingError,
    TResult? Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
  }) {
    return gameIsLoading?.call(gameSettings, commands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult Function()? gameLoadingError,
    TResult Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameIsLoading != null) {
      return gameIsLoading(gameSettings, commands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameIsLoading value) gameIsLoading,
    required TResult Function(_GameLoadingError value) gameLoadingError,
    required TResult Function(_GameIsReady value) gameIsReady,
  }) {
    return gameIsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameIsLoading value)? gameIsLoading,
    TResult? Function(_GameLoadingError value)? gameLoadingError,
    TResult? Function(_GameIsReady value)? gameIsReady,
  }) {
    return gameIsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameIsLoading value)? gameIsLoading,
    TResult Function(_GameLoadingError value)? gameLoadingError,
    TResult Function(_GameIsReady value)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameIsLoading != null) {
      return gameIsLoading(this);
    }
    return orElse();
  }
}

abstract class _GameIsLoading implements AliasState {
  const factory _GameIsLoading(
      {required final GameSettings gameSettings,
      required final List<Command> commands}) = _$_GameIsLoading;

  GameSettings get gameSettings;
  List<Command> get commands;
  @JsonKey(ignore: true)
  _$$_GameIsLoadingCopyWith<_$_GameIsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GameLoadingErrorCopyWith<$Res> {
  factory _$$_GameLoadingErrorCopyWith(
          _$_GameLoadingError value, $Res Function(_$_GameLoadingError) then) =
      __$$_GameLoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GameLoadingErrorCopyWithImpl<$Res>
    extends _$AliasStateCopyWithImpl<$Res, _$_GameLoadingError>
    implements _$$_GameLoadingErrorCopyWith<$Res> {
  __$$_GameLoadingErrorCopyWithImpl(
      _$_GameLoadingError _value, $Res Function(_$_GameLoadingError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GameLoadingError implements _GameLoadingError {
  const _$_GameLoadingError();

  @override
  String toString() {
    return 'AliasState.gameLoadingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GameLoadingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSettings gameSettings, List<Command> commands)
        gameIsLoading,
    required TResult Function() gameLoadingError,
    required TResult Function(GameSettings gameSettings, List<Word> words)
        gameIsReady,
  }) {
    return gameLoadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult? Function()? gameLoadingError,
    TResult? Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
  }) {
    return gameLoadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult Function()? gameLoadingError,
    TResult Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameLoadingError != null) {
      return gameLoadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameIsLoading value) gameIsLoading,
    required TResult Function(_GameLoadingError value) gameLoadingError,
    required TResult Function(_GameIsReady value) gameIsReady,
  }) {
    return gameLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameIsLoading value)? gameIsLoading,
    TResult? Function(_GameLoadingError value)? gameLoadingError,
    TResult? Function(_GameIsReady value)? gameIsReady,
  }) {
    return gameLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameIsLoading value)? gameIsLoading,
    TResult Function(_GameLoadingError value)? gameLoadingError,
    TResult Function(_GameIsReady value)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameLoadingError != null) {
      return gameLoadingError(this);
    }
    return orElse();
  }
}

abstract class _GameLoadingError implements AliasState {
  const factory _GameLoadingError() = _$_GameLoadingError;
}

/// @nodoc
abstract class _$$_GameIsReadyCopyWith<$Res> {
  factory _$$_GameIsReadyCopyWith(
          _$_GameIsReady value, $Res Function(_$_GameIsReady) then) =
      __$$_GameIsReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({GameSettings gameSettings, List<Word> words});
}

/// @nodoc
class __$$_GameIsReadyCopyWithImpl<$Res>
    extends _$AliasStateCopyWithImpl<$Res, _$_GameIsReady>
    implements _$$_GameIsReadyCopyWith<$Res> {
  __$$_GameIsReadyCopyWithImpl(
      _$_GameIsReady _value, $Res Function(_$_GameIsReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
    Object? words = null,
  }) {
    return _then(_$_GameIsReady(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc

class _$_GameIsReady implements _GameIsReady {
  const _$_GameIsReady(
      {required this.gameSettings, required final List<Word> words})
      : _words = words;

  @override
  final GameSettings gameSettings;
  final List<Word> _words;
  @override
  List<Word> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'AliasState.gameIsReady(gameSettings: $gameSettings, words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameIsReady &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, gameSettings, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameIsReadyCopyWith<_$_GameIsReady> get copyWith =>
      __$$_GameIsReadyCopyWithImpl<_$_GameIsReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSettings gameSettings, List<Command> commands)
        gameIsLoading,
    required TResult Function() gameLoadingError,
    required TResult Function(GameSettings gameSettings, List<Word> words)
        gameIsReady,
  }) {
    return gameIsReady(gameSettings, words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult? Function()? gameLoadingError,
    TResult? Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
  }) {
    return gameIsReady?.call(gameSettings, words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSettings gameSettings, List<Command> commands)?
        gameIsLoading,
    TResult Function()? gameLoadingError,
    TResult Function(GameSettings gameSettings, List<Word> words)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameIsReady != null) {
      return gameIsReady(gameSettings, words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameIsLoading value) gameIsLoading,
    required TResult Function(_GameLoadingError value) gameLoadingError,
    required TResult Function(_GameIsReady value) gameIsReady,
  }) {
    return gameIsReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameIsLoading value)? gameIsLoading,
    TResult? Function(_GameLoadingError value)? gameLoadingError,
    TResult? Function(_GameIsReady value)? gameIsReady,
  }) {
    return gameIsReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameIsLoading value)? gameIsLoading,
    TResult Function(_GameLoadingError value)? gameLoadingError,
    TResult Function(_GameIsReady value)? gameIsReady,
    required TResult orElse(),
  }) {
    if (gameIsReady != null) {
      return gameIsReady(this);
    }
    return orElse();
  }
}

abstract class _GameIsReady implements AliasState {
  const factory _GameIsReady(
      {required final GameSettings gameSettings,
      required final List<Word> words}) = _$_GameIsReady;

  GameSettings get gameSettings;
  List<Word> get words;
  @JsonKey(ignore: true)
  _$$_GameIsReadyCopyWith<_$_GameIsReady> get copyWith =>
      throw _privateConstructorUsedError;
}
