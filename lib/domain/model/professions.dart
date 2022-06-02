import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/professions.freezed.dart';
part 'generated/professions.g.dart';

@freezed
class Professions with _$Professions {
  const factory Professions({
    required int id,
    required String name,
    required String description,
    required String employability,
    required int averageSalary,
  }) = _Professions;

  factory Professions.fromJson(Map<String, Object?> json)
  => _$ProfessionsFromJson(json);
}