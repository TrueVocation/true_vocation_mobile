import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/answers.dart';
import 'package:true_vocation_mobile/domain/model/questions.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';

part 'answers_user.freezed.dart';
part 'answers_user.g.dart';

@freezed
class AnswersUser with _$AnswersUser {
  const factory AnswersUser({
    int? id,
    required Answers answer,
    required Questions question,
    required AppUser appUser,
  }) = _AnswersUser;

  factory AnswersUser.fromJson(Map<String, Object?> json)
  => _$AnswersUserFromJson(json);
}