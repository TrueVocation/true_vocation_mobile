// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Professions _$$_ProfessionsFromJson(Map<String, dynamic> json) =>
    _$_Professions(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      employability: json['employability'] as String,
      averageSalary: json['averageSalary'] as int,
    );

Map<String, dynamic> _$$_ProfessionsToJson(_$_Professions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'employability': instance.employability,
      'averageSalary': instance.averageSalary,
    };
