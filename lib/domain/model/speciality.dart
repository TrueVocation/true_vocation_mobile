import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/speciality.freezed.dart';
part 'generated/speciality.g.dart';

@freezed
class Speciality with _$Speciality {
  const factory Speciality({
    required int id,
    required String description,
    required int totalGrants,
    required int minScoreGeneral,
    required int minScoreQuota,
    required String type,
    required String name,
    required int price,
    required String employment,
  }) = _Speciality;

  factory Speciality.fromJson(Map<String, Object?> json)
  => _$SpecialityFromJson(json);
}
