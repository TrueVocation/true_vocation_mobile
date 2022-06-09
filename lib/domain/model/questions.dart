import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/answers.dart';

part 'questions.freezed.dart';
part 'questions.g.dart';

@freezed
class Questions with _$Questions {
  const factory Questions({
    required int id,
    required String question,
    required List<Answers> answers,
  }) = _Questions;

  factory Questions.fromJson(Map<String, Object?> json)
  => _$QuestionsFromJson(json);
}