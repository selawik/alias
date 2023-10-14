// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordDtoImpl _$$WordDtoImplFromJson(Map<String, dynamic> json) =>
    _$WordDtoImpl(
      wordId: json['wordId'] as int,
      name: json['name'] as String,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$WordDtoImplToJson(_$WordDtoImpl instance) =>
    <String, dynamic>{
      'wordId': instance.wordId,
      'name': instance.name,
      'categoryId': instance.categoryId,
    };
