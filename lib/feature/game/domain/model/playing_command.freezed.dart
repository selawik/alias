// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playing_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayingCommand {
  int get commandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayingCommandCopyWith<PlayingCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayingCommandCopyWith<$Res> {
  factory $PlayingCommandCopyWith(
          PlayingCommand value, $Res Function(PlayingCommand) then) =
      _$PlayingCommandCopyWithImpl<$Res, PlayingCommand>;
  @useResult
  $Res call({int commandId, String name, int score});
}

/// @nodoc
class _$PlayingCommandCopyWithImpl<$Res, $Val extends PlayingCommand>
    implements $PlayingCommandCopyWith<$Res> {
  _$PlayingCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
    Object? score = null,
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
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayingCommandCopyWith<$Res>
    implements $PlayingCommandCopyWith<$Res> {
  factory _$$_PlayingCommandCopyWith(
          _$_PlayingCommand value, $Res Function(_$_PlayingCommand) then) =
      __$$_PlayingCommandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commandId, String name, int score});
}

/// @nodoc
class __$$_PlayingCommandCopyWithImpl<$Res>
    extends _$PlayingCommandCopyWithImpl<$Res, _$_PlayingCommand>
    implements _$$_PlayingCommandCopyWith<$Res> {
  __$$_PlayingCommandCopyWithImpl(
      _$_PlayingCommand _value, $Res Function(_$_PlayingCommand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_$_PlayingCommand(
      commandId: null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayingCommand implements _PlayingCommand {
  const _$_PlayingCommand(
      {required this.commandId, required this.name, this.score = 0});

  @override
  final int commandId;
  @override
  final String name;
  @override
  @JsonKey()
  final int score;

  @override
  String toString() {
    return 'PlayingCommand(commandId: $commandId, name: $name, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayingCommand &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId, name, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayingCommandCopyWith<_$_PlayingCommand> get copyWith =>
      __$$_PlayingCommandCopyWithImpl<_$_PlayingCommand>(this, _$identity);
}

abstract class _PlayingCommand implements PlayingCommand {
  const factory _PlayingCommand(
      {required final int commandId,
      required final String name,
      final int score}) = _$_PlayingCommand;

  @override
  int get commandId;
  @override
  String get name;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_PlayingCommandCopyWith<_$_PlayingCommand> get copyWith =>
      throw _privateConstructorUsedError;
}
