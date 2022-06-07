import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'university.freezed.dart';
part 'university.g.dart';

@freezed
class University with _$University {
  const factory University({
    required int id,
    required String name,
    required String description,
    required String address,
    required String code,
    required String logo,
    required bool military,
    required bool dormitory,
    required String status,
    required int specialityCount,
  }) = _University;

  factory University.fromJson(Map<String, Object?> json)
  => _$UniversityFromJson(json);
}
