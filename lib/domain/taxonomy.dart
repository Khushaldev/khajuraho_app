import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxonomy.freezed.dart';
part 'taxonomy.g.dart';

@freezed
class Taxonomy with _$Taxonomy {
  const Taxonomy._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Taxonomy({
    required String id,
    required String name,
    required String slug,
    String? iconUrl,
    required int order,
    required Map<String, Map<String, String>> locale,
    @Default(<Taxonomy>[]) List<Taxonomy> children,
  }) = _Taxonomy;

  factory Taxonomy.fromJson(Map<String, Object?> json) => _$TaxonomyFromJson(json);
}

extension TaxonomyExt on Taxonomy {
  bool get hasChildren => children.isNotEmpty;

  bool get hasIconUrl => iconUrl != null && iconUrl!.isNotEmpty;

  String translatedName(BuildContext context) {
    final String localeCode = context.locale.languageCode;
    final Map<String, String>? translations = locale[localeCode];
    return translations?['name'] ?? name;
  }
}
