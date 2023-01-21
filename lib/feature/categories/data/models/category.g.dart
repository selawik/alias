// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      categoryId: json['categoryId'] as int,
      name: json['name'] as String,
      fileName: json['fileName'] as String,
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
    };
