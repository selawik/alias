// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameDto {
  int get nextPlayingCommandId => throw _privateConstructorUsedError;
  BinarySelectorMode get lastWordMode => throw _privateConstructorUsedError;
  BinarySelectorMode get penaltyMode => throw _privateConstructorUsedError;
  CommandMoveMode get moveTime => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDtoCopyWith<GameDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDtoCopyWith<$Res> {
  factory $GameDtoCopyWith(GameDto value, $Res Function(GameDto) then) =
      _$GameDtoCopyWithImpl<$Res, GameDto>;
  @useResult
  $Res call(
      {int nextPlayingCommandId,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode,
      CommandMoveMode moveTime,
      int categoryId});
}

/// @nodoc
class _$GameDtoCopyWithImpl<$Res, $Val extends GameDto>
    implements $GameDtoCopyWith<$Res> {
  _$GameDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPlayingCommandId = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
    Object? moveTime = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      nextPlayingCommandId: null == nextPlayingCommandId
          ? _value.nextPlayingCommandId
          : nextPlayingCommandId // ignore: cast_nullable_to_non_nullable
              as int,
      lastWordMode: null == lastWordMode
          ? _value.lastWordMode
          : lastWordMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      penaltyMode: null == penaltyMode
          ? _value.penaltyMode
          : penaltyMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      moveTime: null == moveTime
          ? _value.moveTime
          : moveTime // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameDtoCopyWith<$Res> implements $GameDtoCopyWith<$Res> {
  factory _$$_GameDtoCopyWith(
          _$_GameDto value, $Res Function(_$_GameDto) then) =
      __$$_GameDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nextPlayingCommandId,
      BinarySelectorMode lastWordMode,
      BinarySelectorMode penaltyMode,
      CommandMoveMode moveTime,
      int categoryId});
}

/// @nodoc
class __$$_GameDtoCopyWithImpl<$Res>
    extends _$GameDtoCopyWithImpl<$Res, _$_GameDto>
    implements _$$_GameDtoCopyWith<$Res> {
  __$$_GameDtoCopyWithImpl(_$_GameDto _value, $Res Function(_$_GameDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPlayingCommandId = null,
    Object? lastWordMode = null,
    Object? penaltyMode = null,
    Object? moveTime = null,
    Object? categoryId = null,
  }) {
    return _then(_$_GameDto(
      nextPlayingCommandId: null == nextPlayingCommandId
          ? _value.nextPlayingCommandId
          : nextPlayingCommandId // ignore: cast_nullable_to_non_nullable
              as int,
      lastWordMode: null == lastWordMode
          ? _value.lastWordMode
          : lastWordMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      penaltyMode: null == penaltyMode
          ? _value.penaltyMode
          : penaltyMode // ignore: cast_nullable_to_non_nullable
              as BinarySelectorMode,
      moveTime: null == moveTime
          ? _value.moveTime
          : moveTime // ignore: cast_nullable_to_non_nullable
              as CommandMoveMode,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameDto implements _GameDto {
  const _$_GameDto(
      {required this.nextPlayingCommandId,
      required this.lastWordMode,
      required this.penaltyMode,
      required this.moveTime,
      required this.categoryId});

  @override
  final int nextPlayingCommandId;
  @override
  final BinarySelectorMode lastWordMode;
  @override
  final BinarySelectorMode penaltyMode;
  @override
  final CommandMoveMode moveTime;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'GameDto(nextPlayingCommandId: $nextPlayingCommandId, lastWordMode: $lastWordMode, penaltyMode: $penaltyMode, moveTime: $moveTime, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDto &&
            (identical(other.nextPlayingCommandId, nextPlayingCommandId) ||
                other.nextPlayingCommandId == nextPlayingCommandId) &&
            (identical(other.lastWordMode, lastWordMode) ||
                other.lastWordMode == lastWordMode) &&
            (identical(other.penaltyMode, penaltyMode) ||
                other.penaltyMode == penaltyMode) &&
            (identical(other.moveTime, moveTime) ||
                other.moveTime == moveTime) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextPlayingCommandId,
      lastWordMode, penaltyMode, moveTime, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameDtoCopyWith<_$_GameDto> get copyWith =>
      __$$_GameDtoCopyWithImpl<_$_GameDto>(this, _$identity);
}

abstract class _GameDto implements GameDto {
  const factory _GameDto(
      {required final int nextPlayingCommandId,
      required final BinarySelectorMode lastWordMode,
      required final BinarySelectorMode penaltyMode,
      required final CommandMoveMode moveTime,
      required final int categoryId}) = _$_GameDto;

  @override
  int get nextPlayingCommandId;
  @override
  BinarySelectorMode get lastWordMode;
  @override
  BinarySelectorMode get penaltyMode;
  @override
  CommandMoveMode get moveTime;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_GameDtoCopyWith<_$_GameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
