// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommandEntity {
  int get commandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommandEntityCopyWith<CommandEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandEntityCopyWith<$Res> {
  factory $CommandEntityCopyWith(
          CommandEntity value, $Res Function(CommandEntity) then) =
      _$CommandEntityCopyWithImpl<$Res, CommandEntity>;
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class _$CommandEntityCopyWithImpl<$Res, $Val extends CommandEntity>
    implements $CommandEntityCopyWith<$Res> {
  _$CommandEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CommandEntityImplCopyWith<$Res>
    implements $CommandEntityCopyWith<$Res> {
  factory _$$CommandEntityImplCopyWith(
          _$CommandEntityImpl value, $Res Function(_$CommandEntityImpl) then) =
      __$$CommandEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commandId, String name});
}

/// @nodoc
class __$$CommandEntityImplCopyWithImpl<$Res>
    extends _$CommandEntityCopyWithImpl<$Res, _$CommandEntityImpl>
    implements _$$CommandEntityImplCopyWith<$Res> {
  __$$CommandEntityImplCopyWithImpl(
      _$CommandEntityImpl _value, $Res Function(_$CommandEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? name = null,
  }) {
    return _then(_$CommandEntityImpl(
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

class _$CommandEntityImpl implements _CommandEntity {
  const _$CommandEntityImpl({required this.commandId, required this.name});

  @override
  final int commandId;
  @override
  final String name;

  @override
  String toString() {
    return 'CommandEntity(commandId: $commandId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandEntityImpl &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandEntityImplCopyWith<_$CommandEntityImpl> get copyWith =>
      __$$CommandEntityImplCopyWithImpl<_$CommandEntityImpl>(this, _$identity);
}

abstract class _CommandEntity implements CommandEntity {
  const factory _CommandEntity(
      {required final int commandId,
      required final String name}) = _$CommandEntityImpl;

  @override
  int get commandId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CommandEntityImplCopyWith<_$CommandEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
