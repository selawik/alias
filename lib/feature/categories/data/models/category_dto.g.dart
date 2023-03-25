// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      categoryId: json['categoryId'] as int,
      name: json['name'] as String,
      fileName: json['fileName'] as String?,
      wordsCount: json['wordsCount'] as int? ?? 0,
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'fileName': instance.fileName,
      'wordsCount': instance.wordsCount,
      'fileUrl': instance.fileUrl,
    };
