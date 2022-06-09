import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';

part 'favorites.freezed.dart';
part 'favorites.g.dart';

@freezed
class Favorites with _$Favorites {
  const factory Favorites({
    int? id,
    String? type,
    University? university,
    AppUser? user,
    Professions? profession,
    News? post,
    Speciality? specialty,
  }) = _Favorites;

  factory Favorites.fromJson(Map<String, Object?> json)
  => _$FavoritesFromJson(json);
}