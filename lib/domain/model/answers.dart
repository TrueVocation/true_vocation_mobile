import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'answers.freezed.dart';
part 'answers.g.dart';

@freezed
class Answers with _$Answers {
  const factory Answers({
    required int id,
    required String answer,
    required int questionId,
  }) = _Answers;

  factory Answers.fromJson(Map<String, Object?> json)
  => _$AnswersFromJson(json);
}