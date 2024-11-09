// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxonomy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Taxonomy _$TaxonomyFromJson(Map<String, dynamic> json) {
  return _Taxonomy.fromJson(json);
}

/// @nodoc
mixin _$Taxonomy {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  Map<String, Map<String, String>> get locale =>
      throw _privateConstructorUsedError;
  List<Taxonomy> get children => throw _privateConstructorUsedError;

  /// Serializes this Taxonomy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Taxonomy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxonomyCopyWith<Taxonomy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonomyCopyWith<$Res> {
  factory $TaxonomyCopyWith(Taxonomy value, $Res Function(Taxonomy) then) =
      _$TaxonomyCopyWithImpl<$Res, Taxonomy>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? iconUrl,
      int order,
      Map<String, Map<String, String>> locale,
      List<Taxonomy> children});
}

/// @nodoc
class _$TaxonomyCopyWithImpl<$Res, $Val extends Taxonomy>
    implements $TaxonomyCopyWith<$Res> {
  _$TaxonomyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Taxonomy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? iconUrl = freezed,
    Object? order = null,
    Object? locale = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Taxonomy>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxonomyImplCopyWith<$Res>
    implements $TaxonomyCopyWith<$Res> {
  factory _$$TaxonomyImplCopyWith(
          _$TaxonomyImpl value, $Res Function(_$TaxonomyImpl) then) =
      __$$TaxonomyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? iconUrl,
      int order,
      Map<String, Map<String, String>> locale,
      List<Taxonomy> children});
}

/// @nodoc
class __$$TaxonomyImplCopyWithImpl<$Res>
    extends _$TaxonomyCopyWithImpl<$Res, _$TaxonomyImpl>
    implements _$$TaxonomyImplCopyWith<$Res> {
  __$$TaxonomyImplCopyWithImpl(
      _$TaxonomyImpl _value, $Res Function(_$TaxonomyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Taxonomy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? iconUrl = freezed,
    Object? order = null,
    Object? locale = null,
    Object? children = null,
  }) {
    return _then(_$TaxonomyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      locale: null == locale
          ? _value._locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Taxonomy>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TaxonomyImpl extends _Taxonomy {
  _$TaxonomyImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.iconUrl,
      required this.order,
      required final Map<String, Map<String, String>> locale,
      final List<Taxonomy> children = const <Taxonomy>[]})
      : _locale = locale,
        _children = children,
        super._();

  factory _$TaxonomyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxonomyImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? iconUrl;
  @override
  final int order;
  final Map<String, Map<String, String>> _locale;
  @override
  Map<String, Map<String, String>> get locale {
    if (_locale is EqualUnmodifiableMapView) return _locale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_locale);
  }

  final List<Taxonomy> _children;
  @override
  @JsonKey()
  List<Taxonomy> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Taxonomy(id: $id, name: $name, slug: $slug, iconUrl: $iconUrl, order: $order, locale: $locale, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxonomyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._locale, _locale) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      iconUrl,
      order,
      const DeepCollectionEquality().hash(_locale),
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of Taxonomy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxonomyImplCopyWith<_$TaxonomyImpl> get copyWith =>
      __$$TaxonomyImplCopyWithImpl<_$TaxonomyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxonomyImplToJson(
      this,
    );
  }
}

abstract class _Taxonomy extends Taxonomy {
  factory _Taxonomy(
      {required final String id,
      required final String name,
      required final String slug,
      final String? iconUrl,
      required final int order,
      required final Map<String, Map<String, String>> locale,
      final List<Taxonomy> children}) = _$TaxonomyImpl;
  _Taxonomy._() : super._();

  factory _Taxonomy.fromJson(Map<String, dynamic> json) =
      _$TaxonomyImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get iconUrl;
  @override
  int get order;
  @override
  Map<String, Map<String, String>> get locale;
  @override
  List<Taxonomy> get children;

  /// Create a copy of Taxonomy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxonomyImplCopyWith<_$TaxonomyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
