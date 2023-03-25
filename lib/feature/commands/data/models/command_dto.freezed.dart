// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommandDto _$CommandDtoFromJson(Map<String, dynamic> json) {
  return _CommandDto.fromJson(json);
}

/// @nodoc
mixin _$CommandDto {
  int get commandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandDtoCopyWith<CommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandDtoCopyWith<$Res> {
  factory $CommandDtoCopyWith(
          CommandDto value, $Res Function(CommandDto) then) =
      _$CommandDtoCopyWithImpl<$Res, CommandDto>;
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class _$CommandDtoCopyWithImpl<$Res, $Val extends CommandDto>
    implements $CommandDtoCopyWith<$Res> {
  _$CommandDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommandDtoCopyWith<$Res>
    implements $CommandDtoCopyWith<$Res> {
  factory _$$_CommandDtoCopyWith(
          _$_CommandDto value, $Res Function(_$_CommandDto) then) =
      __$$_CommandDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class __$$_CommandDtoCopyWithImpl<$Res>
    extends _$CommandDtoCopyWithImpl<$Res, _$_CommandDto>
    implements _$$_CommandDtoCopyWith<$Res> {
  __$$_CommandDtoCopyWithImpl(
      _$_CommandDto _value, $Res Function(_$_CommandDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
  }) {
    return _then(_$_CommandDto(
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
class _$_CommandDto implements _CommandDto {
  const _$_CommandDto({required this.commandId, required this.name});

  factory _$_CommandDto.fromJson(Map<String, dynamic> json) =>
      _$$_CommandDtoFromJson(json);

  @override
  final int commandId;
  @override
  final String name;

  @override
  String toString() {
    return 'CommandDto(commandId: $commandId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandDto &&
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
  _$$_CommandDtoCopyWith<_$_CommandDto> get copyWith =>
      __$$_CommandDtoCopyWithImpl<_$_CommandDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandDtoToJson(
      this,
    );
  }
}

abstract class _CommandDto implements CommandDto {
  const factory _CommandDto(
      {required final int commandId,
      required final String name}) = _$_CommandDto;

  factory _CommandDto.fromJson(Map<String, dynamic> json) =
      _$_CommandDto.fromJson;

  @override
  int get commandId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CommandDtoCopyWith<_$_CommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}
