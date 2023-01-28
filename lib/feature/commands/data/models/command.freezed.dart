// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Command _$CommandFromJson(Map<String, dynamic> json) {
  return _Command.fromJson(json);
}

/// @nodoc
mixin _$Command {
  int get commandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandCopyWith<Command> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res, Command>;
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class _$CommandCopyWithImpl<$Res, $Val extends Command>
    implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      commandId: null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommandCopyWith<$Res> implements $CommandCopyWith<$Res> {
  factory _$$_CommandCopyWith(
          _$_Command value, $Res Function(_$_Command) then) =
      __$$_CommandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class __$$_CommandCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res, _$_Command>
    implements _$$_CommandCopyWith<$Res> {
  __$$_CommandCopyWithImpl(_$_Command _value, $Res Function(_$_Command) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
  }) {
    return _then(_$_Command(
      commandId: null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Command implements _Command {
  const _$_Command({required this.commandId, required this.name});

  factory _$_Command.fromJson(Map<String, dynamic> json) =>
      _$$_CommandFromJson(json);

  @override
  final int commandId;
  @override
  final String name;

  @override
  String toString() {
    return 'Command(commandId: $commandId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Command &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commandId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandCopyWith<_$_Command> get copyWith =>
      __$$_CommandCopyWithImpl<_$_Command>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandToJson(
      this,
    );
  }
}

abstract class _Command implements Command {
  const factory _Command(
      {required final int commandId, required final String name}) = _$_Command;

  factory _Command.fromJson(Map<String, dynamic> json) = _$_Command.fromJson;

  @override
  int get commandId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CommandCopyWith<_$_Command> get copyWith =>
      throw _privateConstructorUsedError;
}
