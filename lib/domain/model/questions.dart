import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'questions.freezed.dart';
part 'questions.g.dart';

@freezed
class Questions with _$Questions {
  const factory Questions({
    required int id,
    required String question,
  }) = _Questions;

  factory Questions.fromJson(Map<String, Object?> json)
  => _$QuestionsFromJson(json);
}