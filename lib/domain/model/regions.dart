import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/regions.freezed.dart';
part 'generated/regions.g.dart';

@freezed
class Regions with _$Regions {
  const factory Regions({
    required int id,
    required String name,
  }) = _Regions;

  factory Regions.fromJson(Map<String, Object?> json)
  => _$RegionsFromJson(json);
}