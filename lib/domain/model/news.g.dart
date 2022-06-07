// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as int?,
      title: json['title'] as String?,
      shortDescription: json['shortDescription'] as String?,
      description: json['description'] as String?,
      picture: json['picture'] as String?,
      tag: json['tag'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'picture': instance.picture,
      'tag': instance.tag,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
