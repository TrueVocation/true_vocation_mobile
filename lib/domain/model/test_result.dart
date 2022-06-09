import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/user_aptitudes.dart';

part 'test_result.freezed.dart';
part 'test_result.g.dart';

@freezed
class TestResult with _$TestResult {
  const factory TestResult({
    int? id,
    List<UserAptitudes>? userAptitudes,
  }) = _TestResult;

  factory TestResult.fromJson(Map<String, Object?> json)
  => _$TestResultFromJson(json);
}