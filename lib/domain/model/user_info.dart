import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    int? id,
    String? phoneNumber,
    String? birthdate,
    User? user,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json)
  => _$UserInfoFromJson(json);
}
