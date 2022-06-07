import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class CustomResponse with _$CustomResponse {
  const factory CustomResponse({
    required int code,
    required String title,
    dynamic body,
  }) = _CustomResponse;

  factory CustomResponse.fromJson(Map<String, Object?> json)
  => _$CustomResponseFromJson(json);
}