import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    int? id,
    String? phoneNumber,
    String? birthdate,
    String? login,
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    String? imageUrl,
    bool? activated,
    User? user,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, Object?> json)
  => _$AppUserFromJson(json);
}
