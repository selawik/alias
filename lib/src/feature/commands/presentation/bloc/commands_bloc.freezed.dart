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
abstract class _$$LoadCommandsImplCopyWith<$Res> {
  factory _$$LoadCommandsImplCopyWith(
          _$LoadCommandsImpl value, $Res Function(_$LoadCommandsImpl) then) =
      __$$LoadCommandsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCommandsImplCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$LoadCommandsImpl>
    implements _$$LoadCommandsImplCopyWith<$Res> {
  __$$LoadCommandsImplCopyWithImpl(
      _$LoadCommandsImpl _value, $Res Function(_$LoadCommandsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCommandsImpl implements _LoadCommands {
  const _$LoadCommandsImpl();

  @override
  String toString() {
    return 'CommandsEvent.loadCommands()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCommandsImpl);
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
  const factory _LoadCommands() = _$LoadCommandsImpl;
}

/// @nodoc
abstract class _$$AddCommandImplCopyWith<$Res> {
  factory _$$AddCommandImplCopyWith(
          _$AddCommandImpl value, $Res Function(_$AddCommandImpl) then) =
      __$$AddCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommandImplCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$AddCommandImpl>
    implements _$$AddCommandImplCopyWith<$Res> {
  __$$AddCommandImplCopyWithImpl(
      _$AddCommandImpl _value, $Res Function(_$AddCommandImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommandImpl implements _AddCommand {
  const _$AddCommandImpl();

  @override
  String toString() {
    return 'CommandsEvent.addCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCommandImpl);
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
  const factory _AddCommand() = _$AddCommandImpl;
}

/// @nodoc
abstract class _$$RemoveCommandImplCopyWith<$Res> {
  factory _$$RemoveCommandImplCopyWith(
          _$RemoveCommandImpl value, $Res Function(_$RemoveCommandImpl) then) =
      __$$RemoveCommandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommandEntity command});

  $CommandEntityCopyWith<$Res> get command;
}

/// @nodoc
class __$$RemoveCommandImplCopyWithImpl<$Res>
    extends _$CommandsEventCopyWithImpl<$Res, _$RemoveCommandImpl>
    implements _$$RemoveCommandImplCopyWith<$Res> {
  __$$RemoveCommandImplCopyWithImpl(
      _$RemoveCommandImpl _value, $Res Function(_$RemoveCommandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_$RemoveCommandImpl(
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

class _$RemoveCommandImpl implements _RemoveCommand {
  const _$RemoveCommandImpl({required this.command});

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
            other is _$RemoveCommandImpl &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCommandImplCopyWith<_$RemoveCommandImpl> get copyWith =>
      __$$RemoveCommandImplCopyWithImpl<_$RemoveCommandImpl>(this, _$identity);

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
      _$RemoveCommandImpl;

  CommandEntity get command;
  @JsonKey(ignore: true)
  _$$RemoveCommandImplCopyWith<_$RemoveCommandImpl> get copyWith =>
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
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'CommandsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
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
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<CommandEntity> addedCommands, Set<CommandEntity> allCommands});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedCommands = null,
    Object? allCommands = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl(
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
            other is _$LoadedImpl &&
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
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

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
      required final Set<CommandEntity> allCommands}) = _$LoadedImpl;
  const _Loaded._() : super._();

  Set<CommandEntity> get addedCommands;
  Set<CommandEntity> get allCommands;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CommandsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.message}) : super._();

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
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

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
  const factory _Error({required final String message}) = _$ErrorImpl;
  const _Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
