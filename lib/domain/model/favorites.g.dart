// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorites _$$_FavoritesFromJson(Map<String, dynamic> json) => _$_Favorites(
      id: json['id'] as int?,
      type: json['type'] as String?,
      university: json['university'] == null
          ? null
          : University.fromJson(json['university'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      profession: json['profession'] == null
          ? null
          : Professions.fromJson(json['profession'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : News.fromJson(json['post'] as Map<String, dynamic>),
      specialty: json['specialty'] == null
          ? null
          : Speciality.fromJson(json['specialty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoritesToJson(_$_Favorites instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'university': instance.university,
      'user': instance.user,
      'profession': instance.profession,
      'post': instance.post,
      'specialty': instance.specialty,
    };
