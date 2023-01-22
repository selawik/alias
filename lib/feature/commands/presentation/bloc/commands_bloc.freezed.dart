// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    required TResult Function(Command command) addCommand,
    required TResult Function(Command command) removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function(Command command)? addCommand,
    TResult? Function(Command command)? removeCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function(Command command)? addCommand,
    TResult Function(Command command)? removeCommand,
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
    required TResult Function(Command command) addCommand,
    required TResult Function(Command command) removeCommand,
  }) {
    return loadCommands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function(Command command)? addCommand,
    TResult? Function(Command command)? removeCommand,
  }) {
    return loadCommands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function(Command command)? addCommand,
    TResult Function(Command command)? removeCommand,
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
  @useResult
  $Res call({Command command});

  $CommandCopyWith<$Res> get command;
}

/// @nodoc
class __$$_AddCommandCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$_AddCommand>
    implements _$$_AddCommandCopyWith<$Res> {
  __$$_AddCommandCopyWithImpl(
      _$_AddCommand _value, $Res Function(_$_AddCommand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_$_AddCommand(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as Command,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommandCopyWith<$Res> get command {
    return $CommandCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value));
    });
  }
}

/// @nodoc

class _$_AddCommand implements _AddCommand {
  const _$_AddCommand({required this.command});

  @override
  final Command command;

  @override
  String toString() {
    return 'CommandsEvent.addCommand(command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCommand &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCommandCopyWith<_$_AddCommand> get copyWith =>
      __$$_AddCommandCopyWithImpl<_$_AddCommand>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCommands,
    required TResult Function(Command command) addCommand,
    required TResult Function(Command command) removeCommand,
  }) {
    return addCommand(command);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function(Command command)? addCommand,
    TResult? Function(Command command)? removeCommand,
  }) {
    return addCommand?.call(command);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function(Command command)? addCommand,
    TResult Function(Command command)? removeCommand,
    required TResult orElse(),
  }) {
    if (addCommand != null) {
      return addCommand(command);
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
  const factory _AddCommand({required final Command command}) = _$_AddCommand;

  Command get command;
  @JsonKey(ignore: true)
  _$$_AddCommandCopyWith<_$_AddCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCommandCopyWith<$Res> {
  factory _$$_RemoveCommandCopyWith(
          _$_RemoveCommand value, $Res Function(_$_RemoveCommand) then) =
      __$$_RemoveCommandCopyWithImpl<$Res>;
  @useResult
  $Res call({Command command});

  $CommandCopyWith<$Res> get command;
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
              as Command,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommandCopyWith<$Res> get command {
    return $CommandCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value));
    });
  }
}

/// @nodoc

class _$_RemoveCommand implements _RemoveCommand {
  const _$_RemoveCommand({required this.command});

  @override
  final Command command;

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
    required TResult Function(Command command) addCommand,
    required TResult Function(Command command) removeCommand,
  }) {
    return removeCommand(command);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCommands,
    TResult? Function(Command command)? addCommand,
    TResult? Function(Command command)? removeCommand,
  }) {
    return removeCommand?.call(command);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCommands,
    TResult Function(Command command)? addCommand,
    TResult Function(Command command)? removeCommand,
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
  const factory _RemoveCommand({required final Command command}) =
      _$_RemoveCommand;

  Command get command;
  @JsonKey(ignore: true)
  _$$_RemoveCommandCopyWith<_$_RemoveCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommandsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommandsState.initial()';
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
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommandsState {
  const factory _Initial() = _$_Initial;
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

class _$_Loading implements _Loading {
  const _$_Loading();

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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CommandsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'CommandsState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CommandsState {
  const factory _Loaded() = _$_Loaded;
}
