import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/faculty.freezed.dart';
part 'generated/faculty.g.dart';

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    int? id,
    String? name,
    int? description,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, Object?> json)
  => _$FacultyFromJson(json);
}