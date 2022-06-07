// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomResponse _$$_CustomResponseFromJson(Map<String, dynamic> json) =>
    _$_CustomResponse(
      code: json['code'] as int,
      title: json['title'] as String,
      body: json['body'],
    );

Map<String, dynamic> _$$_CustomResponseToJson(_$_CustomResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'body': instance.body,
    };
