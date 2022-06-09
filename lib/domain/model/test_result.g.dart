// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestResult _$$_TestResultFromJson(Map<String, dynamic> json) =>
    _$_TestResult(
      id: json['id'] as int?,
      userAptitudes: (json['userAptitudes'] as List<dynamic>?)
          ?.map((e) => UserAptitudes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TestResultToJson(_$_TestResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userAptitudes': instance.userAptitudes,
    };
