// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordEntity {
  int get wordId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordEntityCopyWith<WordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordEntityCopyWith<$Res> {
  factory $WordEntityCopyWith(
          WordEntity value, $Res Function(WordEntity) then) =
      _$WordEntityCopyWithImpl<$Res, WordEntity>;
  @useResult
  $Res call({int wordId, String name, int categoryId});
}

/// @nodoc
class _$WordEntityCopyWithImpl<$Res, $Val extends WordEntity>
    implements $WordEntityCopyWith<$Res> {
  _$WordEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$WordEntityImplCopyWith<$Res>
    implements $WordEntityCopyWith<$Res> {
  factory _$$WordEntityImplCopyWith(
          _$WordEntityImpl value, $Res Function(_$WordEntityImpl) then) =
      __$$WordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int wordId, String name, int categoryId});
}

/// @nodoc
class __$$WordEntityImplCopyWithImpl<$Res>
    extends _$WordEntityCopyWithImpl<$Res, _$WordEntityImpl>
    implements _$$WordEntityImplCopyWith<$Res> {
  __$$WordEntityImplCopyWithImpl(
      _$WordEntityImpl _value, $Res Function(_$WordEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordId = null,
    Object? name = null,
    Object? categoryId = null,
  }) {
    return _then(_$WordEntityImpl(
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

class _$WordEntityImpl implements _WordEntity {
  const _$WordEntityImpl(
      {required this.wordId, required this.name, required this.categoryId});

  @override
  final int wordId;
  @override
  final String name;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'WordEntity(wordId: $wordId, name: $name, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordEntityImpl &&
            (identical(other.wordId, wordId) || other.wordId == wordId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordId, name, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordEntityImplCopyWith<_$WordEntityImpl> get copyWith =>
      __$$WordEntityImplCopyWithImpl<_$WordEntityImpl>(this, _$identity);
}

abstract class _WordEntity implements WordEntity {
  const factory _WordEntity(
      {required final int wordId,
      required final String name,
      required final int categoryId}) = _$WordEntityImpl;

  @override
  int get wordId;
  @override
  String get name;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$WordEntityImplCopyWith<_$WordEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
