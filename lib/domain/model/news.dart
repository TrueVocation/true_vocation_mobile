import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    int? id,
    String? title,
    String? shortDescription,
    String? description,
    String? picture,
    String? tag,
    DateTime? createdDate,
  }) = _News;

  factory News.fromJson(Map<String, Object?> json)
  => _$NewsFromJson(json);
}