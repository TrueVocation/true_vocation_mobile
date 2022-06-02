import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? login,
    String? phoneNumber,
    String? birthdate,
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    String? imageUrl,
    bool? activated,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
  => _$UserFromJson(json);
}
