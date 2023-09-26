// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commands_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommandsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommands,
    required TResult Function() addCommand,
    required TResult Function(CommandEntity command) removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function()? addCommand,
    TResult? Function(CommandEntity command)? removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function()? addCommand,
    TResult Function(CommandEntity command)? removeCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCommands value) loadCommands,
    required TResult Function(_AddCommand value) addCommand,
    required TResult Function(_RemoveCommand value) removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCommands value)? loadCommands,
    TResult? Function(_AddCommand value)? addCommand,
    TResult? Function(_RemoveCommand value)? removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCommands value)? loadCommands,
    TResult Function(_AddCommand value)? addCommand,
    TResult Function(_RemoveCommand value)? removeCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandsEventCopyWith<$Res> {
  factory $CommandsEventCopyWith(
          CommandsEvent value, $Res Function(CommandsEvent) then) =
      _$CommandsEventCopyWithImpl<$Res, CommandsEvent>;
}

/// @nodoc
class _$CommandsEventCopyWithImpl<$Res, $Val extends CommandsEvent>
    implements $CommandsEventCopyWith<$Res> {
  _$CommandsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCommandsCopyWith<$Res> {
  factory _$$_LoadCommandsCopyWith(
          _$_LoadCommands value, $Res Function(_$_LoadCommands) then) =
      __$$_LoadCommandsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCommandsCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$_LoadCommands>
    implements _$$_LoadCommandsCopyWith<$Res> {
  __$$_LoadCommandsCopyWithImpl(
      _$_LoadCommands _value, $Res Function(_$_LoadCommands) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadCommands implements _LoadCommands {
  const _$_LoadCommands();

  @override
  String toString() {
    return 'CommandsEvent.loadCommands()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadCommands);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommands,
    required TResult Function() addCommand,
    required TResult Function(CommandEntity command) removeCommand,
  }) {
    return loadCommands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function()? addCommand,
    TResult? Function(CommandEntity command)? removeCommand,
  }) {
    return loadCommands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function()? addCommand,
    TResult Function(CommandEntity command)? removeCommand,
    required TResult orElse(),
  }) {
    if (loadCommands != null) {
      return loadCommands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCommands value) loadCommands,
    required TResult Function(_AddCommand value) addCommand,
    required TResult Function(_RemoveCommand value) removeCommand,
  }) {
    return loadCommands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCommands value)? loadCommands,
    TResult? Function(_AddCommand value)? addCommand,
    TResult? Function(_RemoveCommand value)? removeCommand,
  }) {
    return loadCommands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCommands value)? loadCommands,
    TResult Function(_AddCommand value)? addCommand,
    TResult Function(_RemoveCommand value)? removeCommand,
    required TResult orElse(),
  }) {
    if (loadCommands != null) {
      return loadCommands(this);
    }
    return orElse();
  }
}

abstract class _LoadCommands implements CommandsEvent {
  const factory _LoadCommands() = _$_LoadCommands;
}

/// @nodoc
abstract class _$$_AddCommandCopyWith<$Res> {
  factory _$$_AddCommandCopyWith(
          _$_AddCommand value, $Res Function(_$_AddCommand) then) =
      __$$_AddCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddCommandCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$_AddCommand>
    implements _$$_AddCommandCopyWith<$Res> {
  __$$_AddCommandCopyWithImpl(
      _$_AddCommand _value, $Res Function(_$_AddCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddCommand implements _AddCommand {
  const _$_AddCommand();

  @override
  String toString() {
    return 'CommandsEvent.addCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommands,
    required TResult Function() addCommand,
    required TResult Function(CommandEntity command) removeCommand,
  }) {
    return addCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function()? addCommand,
    TResult? Function(CommandEntity command)? removeCommand,
  }) {
    return addCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function()? addCommand,
    TResult Function(CommandEntity command)? removeCommand,
    required TResult orElse(),
  }) {
    if (addCommand != null) {
      return addCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCommands value) loadCommands,
    required TResult Function(_AddCommand value) addCommand,
    required TResult Function(_RemoveCommand value) removeCommand,
  }) {
    return addCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCommands value)? loadCommands,
    TResult? Function(_AddCommand value)? addCommand,
    TResult? Function(_RemoveCommand value)? removeCommand,
  }) {
    return addCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCommands value)? loadCommands,
    TResult Function(_AddCommand value)? addCommand,
    TResult Function(_RemoveCommand value)? removeCommand,
    required TResult orElse(),
  }) {
    if (addCommand != null) {
      return addCommand(this);
    }
    return orElse();
  }
}

abstract class _AddCommand implements CommandsEvent {
  const factory _AddCommand() = _$_AddCommand;
}

/// @nodoc
abstract class _$$_RemoveCommandCopyWith<$Res> {
  factory _$$_RemoveCommandCopyWith(
          _$_RemoveCommand value, $Res Function(_$_RemoveCommand) then) =
      __$$_RemoveCommandCopyWithImpl<$Res>;
  @useResult
  $Res call({CommandEntity command});

  $CommandEntityCopyWith<$Res> get command;
}

/// @nodoc
class __$$_RemoveCommandCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$_RemoveCommand>
    implements _$$_RemoveCommandCopyWith<$Res> {
  __$$_RemoveCommandCopyWithImpl(
      _$_RemoveCommand _value, $Res Function(_$_RemoveCommand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_$_RemoveCommand(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as CommandEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommandEntityCopyWith<$Res> get command {
    return $CommandEntityCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value));
    });
  }
}

/// @nodoc

class _$_RemoveCommand implements _RemoveCommand {
  const _$_RemoveCommand({required this.command});

  @override
  final CommandEntity command;

  @override
  String toString() {
    return 'CommandsEvent.removeCommand(command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveCommand &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveCommandCopyWith<_$_RemoveCommand> get copyWith =>
      __$$_RemoveCommandCopyWithImpl<_$_RemoveCommand>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommands,
    required TResult Function() addCommand,
    required TResult Function(CommandEntity command) removeCommand,
  }) {
    return removeCommand(command);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function()? addCommand,
    TResult? Function(CommandEntity command)? removeCommand,
  }) {
    return removeCommand?.call(command);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function()? addCommand,
    TResult Function(CommandEntity command)? removeCommand,
    required TResult orElse(),
  }) {
    if (removeCommand != null) {
      return removeCommand(command);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCommands value) loadCommands,
    required TResult Function(_AddCommand value) addCommand,
    required TResult Function(_RemoveCommand value) removeCommand,
  }) {
    return removeCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCommands value)? loadCommands,
    TResult? Function(_AddCommand value)? addCommand,
    TResult? Function(_RemoveCommand value)? removeCommand,
  }) {
    return removeCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCommands value)? loadCommands,
    TResult Function(_AddCommand value)? addCommand,
    TResult Function(_RemoveCommand value)? removeCommand,
    required TResult orElse(),
  }) {
    if (removeCommand != null) {
      return removeCommand(this);
    }
    return orElse();
  }
}

abstract class _RemoveCommand implements CommandsEvent {
  const factory _RemoveCommand({required final CommandEntity command}) =
      _$_RemoveCommand;

  CommandEntity get command;
  @JsonKey(ignore: true)
  _$$_RemoveCommandCopyWith<_$_RemoveCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommandsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandsStateCopyWith<$Res> {
  factory $CommandsStateCopyWith(
          CommandsState value, $Res Function(CommandsState) then) =
      _$CommandsStateCopyWithImpl<$Res, CommandsState>;
}

/// @nodoc
class _$CommandsStateCopyWithImpl<$Res, $Val extends CommandsState>
    implements $CommandsStateCopyWith<$Res> {
  _$CommandsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'CommandsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CommandsState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedCommands = null,
    Object? allCommands = null,
  }) {
    return _then(_$_Loaded(
      addedCommands: null == addedCommands
          ? _value._addedCommands
          : addedCommands // ignore: cast_nullable_to_non_nullable
              as Set<CommandEntity>,
      allCommands: null == allCommands
          ? _value._allCommands
          : allCommands // ignore: cast_nullable_to_non_nullable
              as Set<CommandEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded(
      {required final Set<CommandEntity> addedCommands,
      required final Set<CommandEntity> allCommands})
      : _addedCommands = addedCommands,
        _allCommands = allCommands,
        super._();

  final Set<CommandEntity> _addedCommands;
  @override
  Set<CommandEntity> get addedCommands {
    if (_addedCommands is EqualUnmodifiableSetView) return _addedCommands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_addedCommands);
  }

  final Set<CommandEntity> _allCommands;
  @override
  Set<CommandEntity> get allCommands {
    if (_allCommands is EqualUnmodifiableSetView) return _allCommands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_allCommands);
  }

  @override
  String toString() {
    return 'CommandsState.loaded(addedCommands: $addedCommands, allCommands: $allCommands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._addedCommands, _addedCommands) &&
            const DeepCollectionEquality()
                .equals(other._allCommands, _allCommands));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addedCommands),
      const DeepCollectionEquality().hash(_allCommands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(addedCommands, allCommands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(addedCommands, allCommands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(addedCommands, allCommands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends CommandsState {
  const factory _Loaded(
      {required final Set<CommandEntity> addedCommands,
      required final Set<CommandEntity> allCommands}) = _$_Loaded;
  const _Loaded._() : super._();

  Set<CommandEntity> get addedCommands;
  Set<CommandEntity> get allCommands;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommandsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends CommandsState {
  const factory _Error({required final String message}) = _$_Error;
  const _Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
