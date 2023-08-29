// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameAnswer {
  Word get word => throw _privateConstructorUsedError;
  GameAnswerType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameAnswerCopyWith<GameAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAnswerCopyWith<$Res> {
  factory $GameAnswerCopyWith(
          GameAnswer value, $Res Function(GameAnswer) then) =
      _$GameAnswerCopyWithImpl<$Res, GameAnswer>;
  @useResult
  $Res call({Word word, GameAnswerType type});

  $WordCopyWith<$Res> get word;
}

/// @nodoc
class _$GameAnswerCopyWithImpl<$Res, $Val extends GameAnswer>
    implements $GameAnswerCopyWith<$Res> {
  _$GameAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameAnswerType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordCopyWith<$Res> get word {
    return $WordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameAnswerCopyWith<$Res>
    implements $GameAnswerCopyWith<$Res> {
  factory _$$_GameAnswerCopyWith(
          _$_GameAnswer value, $Res Function(_$_GameAnswer) then) =
      __$$_GameAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Word word, GameAnswerType type});

  @override
  $WordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_GameAnswerCopyWithImpl<$Res>
    extends _$GameAnswerCopyWithImpl<$Res, _$_GameAnswer>
    implements _$$_GameAnswerCopyWith<$Res> {
  __$$_GameAnswerCopyWithImpl(
      _$_GameAnswer _value, $Res Function(_$_GameAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? type = null,
  }) {
    return _then(_$_GameAnswer(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameAnswerType,
    ));
  }
}

/// @nodoc

class _$_GameAnswer implements _GameAnswer {
  const _$_GameAnswer({required this.word, required this.type});

  @override
  final Word word;
  @override
  final GameAnswerType type;

  @override
  String toString() {
    return 'GameAnswer(word: $word, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameAnswer &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameAnswerCopyWith<_$_GameAnswer> get copyWith =>
      __$$_GameAnswerCopyWithImpl<_$_GameAnswer>(this, _$identity);
}

abstract class _GameAnswer implements GameAnswer {
  const factory _GameAnswer(
      {required final Word word,
      required final GameAnswerType type}) = _$_GameAnswer;

  @override
  Word get word;
  @override
  GameAnswerType get type;
  @override
  @JsonKey(ignore: true)
  _$$_GameAnswerCopyWith<_$_GameAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
