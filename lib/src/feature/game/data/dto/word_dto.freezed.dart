// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordDto _$WordDtoFromJson(Map<String, dynamic> json) {
  return _WordDto.fromJson(json);
}

/// @nodoc
mixin _$WordDto {
  int get wordId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordDtoCopyWith<WordDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordDtoCopyWith<$Res> {
  factory $WordDtoCopyWith(WordDto value, $Res Function(WordDto) then) =
      _$WordDtoCopyWithImpl<$Res, WordDto>;
  @useResult
  $Res call({int wordId, String name, int categoryId});
}

/// @nodoc
class _$WordDtoCopyWithImpl<$Res, $Val extends WordDto>
    implements $WordDtoCopyWith<$Res> {
  _$WordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordId = null,
    Object? name = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      wordId: null == wordId
          ? _value.wordId
          : wordId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordDtoImplCopyWith<$Res> implements $WordDtoCopyWith<$Res> {
  factory _$$WordDtoImplCopyWith(
          _$WordDtoImpl value, $Res Function(_$WordDtoImpl) then) =
      __$$WordDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int wordId, String name, int categoryId});
}

/// @nodoc
class __$$WordDtoImplCopyWithImpl<$Res>
    extends _$WordDtoCopyWithImpl<$Res, _$WordDtoImpl>
    implements _$$WordDtoImplCopyWith<$Res> {
  __$$WordDtoImplCopyWithImpl(
      _$WordDtoImpl _value, $Res Function(_$WordDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordId = null,
    Object? name = null,
    Object? categoryId = null,
  }) {
    return _then(_$WordDtoImpl(
      wordId: null == wordId
          ? _value.wordId
          : wordId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordDtoImpl implements _WordDto {
  const _$WordDtoImpl(
      {required this.wordId, required this.name, required this.categoryId});

  factory _$WordDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordDtoImplFromJson(json);

  @override
  final int wordId;
  @override
  final String name;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'WordDto(wordId: $wordId, name: $name, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordDtoImpl &&
            (identical(other.wordId, wordId) || other.wordId == wordId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wordId, name, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordDtoImplCopyWith<_$WordDtoImpl> get copyWith =>
      __$$WordDtoImplCopyWithImpl<_$WordDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordDtoImplToJson(
      this,
    );
  }
}

abstract class _WordDto implements WordDto {
  const factory _WordDto(
      {required final int wordId,
      required final String name,
      required final int categoryId}) = _$WordDtoImpl;

  factory _WordDto.fromJson(Map<String, dynamic> json) = _$WordDtoImpl.fromJson;

  @override
  int get wordId;
  @override
  String get name;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$WordDtoImplCopyWith<_$WordDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
