// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aptitude_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AptitudeDTO _$$_AptitudeDTOFromJson(Map<String, dynamic> json) =>
    _$_AptitudeDTO(
      id: json['id'] as int?,
      code: json['code'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_AptitudeDTOToJson(_$_AptitudeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
    };
