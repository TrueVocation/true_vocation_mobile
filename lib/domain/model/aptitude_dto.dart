import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'aptitude_dto.freezed.dart';
part 'aptitude_dto.g.dart';

@freezed
class AptitudeDTO with _$AptitudeDTO {
  const factory AptitudeDTO({
    int? id,
    int? code,
    String? name,
    String? description,
  }) = _AptitudeDTO;

  factory AptitudeDTO.fromJson(Map<String, Object?> json)
  => _$AptitudeDTOFromJson(json);
}