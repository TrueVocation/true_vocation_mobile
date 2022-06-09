import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/aptitude_dto.dart';

part 'user_aptitudes.freezed.dart';
part 'user_aptitudes.g.dart';

@freezed
class UserAptitudes with _$UserAptitudes {
  const factory UserAptitudes({
    int? score,
    AptitudeDTO? aptitudeDTO,
  }) = _UserAptitudes;

  factory UserAptitudes.fromJson(Map<String, Object?> json)
  => _$UserAptitudesFromJson(json);
}