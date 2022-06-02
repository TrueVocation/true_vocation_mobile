import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/subjects.freezed.dart';
part 'generated/subjects.g.dart';

@freezed
class Subjects with _$Subjects {
  const factory Subjects({
    required int id,
    required String name,
  }) = _Subjects;

  factory Subjects.fromJson(Map<String, Object?> json)
  => _$SubjectsFromJson(json);
}