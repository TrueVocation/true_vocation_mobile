// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_aptitudes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAptitudes _$$_UserAptitudesFromJson(Map<String, dynamic> json) =>
    _$_UserAptitudes(
      score: json['score'] as int?,
      aptitudeDTO: json['aptitudeDTO'] == null
          ? null
          : AptitudeDTO.fromJson(json['aptitudeDTO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserAptitudesToJson(_$_UserAptitudes instance) =>
    <String, dynamic>{
      'score': instance.score,
      'aptitudeDTO': instance.aptitudeDTO,
    };
