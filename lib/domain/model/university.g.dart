// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_University _$$_UniversityFromJson(Map<String, dynamic> json) =>
    _$_University(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      code: json['code'] as String,
      logo: json['logo'] as String,
      military: json['military'] as bool,
      dormitory: json['dormitory'] as bool,
      status: json['status'] as String,
      specialityCount: json['specialityCount'] as int,
    );

Map<String, dynamic> _$$_UniversityToJson(_$_University instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'code': instance.code,
      'logo': instance.logo,
      'military': instance.military,
      'dormitory': instance.dormitory,
      'status': instance.status,
      'specialityCount': instance.specialityCount,
    };
