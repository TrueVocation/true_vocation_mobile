// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Speciality _$$_SpecialityFromJson(Map<String, dynamic> json) =>
    _$_Speciality(
      id: json['id'] as int,
      description: json['description'] as String,
      totalGrants: json['totalGrants'] as int,
      minScoreGeneral: json['minScoreGeneral'] as int,
      minScoreQuota: json['minScoreQuota'] as int,
      type: json['type'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      employment: json['employment'] as String,
    );

Map<String, dynamic> _$$_SpecialityToJson(_$_Speciality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'totalGrants': instance.totalGrants,
      'minScoreGeneral': instance.minScoreGeneral,
      'minScoreQuota': instance.minScoreQuota,
      'type': instance.type,
      'name': instance.name,
      'price': instance.price,
      'employment': instance.employment,
    };
