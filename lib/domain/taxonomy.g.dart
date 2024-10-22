// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxonomyImpl _$$TaxonomyImplFromJson(Map<String, dynamic> json) =>
    _$TaxonomyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      iconUrl: json['icon_url'] as String?,
      order: (json['order'] as num).toInt(),
      locale: (json['locale'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => Taxonomy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Taxonomy>[],
    );

Map<String, dynamic> _$$TaxonomyImplToJson(_$TaxonomyImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'slug': instance.slug,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icon_url', instance.iconUrl);
  val['order'] = instance.order;
  val['locale'] = instance.locale;
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  return val;
}
