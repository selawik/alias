// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      categoryId: json['categoryId'] as int,
      name: json['name'] as String,
      fileName: json['fileName'] as String?,
      wordsCount: json['wordsCount'] as int? ?? 0,
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'fileName': instance.fileName,
      'wordsCount': instance.wordsCount,
      'fileUrl': instance.fileUrl,
    };
