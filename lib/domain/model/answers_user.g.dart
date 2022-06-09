// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswersUser _$$_AnswersUserFromJson(Map<String, dynamic> json) =>
    _$_AnswersUser(
      id: json['id'] as int?,
      answer: Answers.fromJson(json['answer'] as Map<String, dynamic>),
      question: Questions.fromJson(json['question'] as Map<String, dynamic>),
      appUser: AppUser.fromJson(json['appUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnswersUserToJson(_$_AnswersUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'question': instance.question,
      'appUser': instance.appUser,
    };
