// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      login: json['login'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      birthdate: json['birthdate'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      imageUrl: json['imageUrl'] as String?,
      activated: json['activated'] as bool?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'phoneNumber': instance.phoneNumber,
      'birthdate': instance.birthdate,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'activated': instance.activated,
    };
