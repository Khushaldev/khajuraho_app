// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxonomy_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxonomyItem _$TaxonomyItemFromJson(Map<String, dynamic> json) {
  return _TaxonomyItem.fromJson(json);
}

/// @nodoc
mixin _$TaxonomyItem {
  String get itemId => throw _privateConstructorUsedError;
  String get taxonomyId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ContactInfo get contactInfo => throw _privateConstructorUsedError;
  LocationInfo get location => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;
  Images get images => throw _privateConstructorUsedError;
  OtherAttributes get otherAttributes => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  /// Serializes this TaxonomyItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxonomyItemCopyWith<TaxonomyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonomyItemCopyWith<$Res> {
  factory $TaxonomyItemCopyWith(
          TaxonomyItem value, $Res Function(TaxonomyItem) then) =
      _$TaxonomyItemCopyWithImpl<$Res, TaxonomyItem>;
  @useResult
  $Res call(
      {String itemId,
      String taxonomyId,
      String name,
      String description,
      ContactInfo contactInfo,
      LocationInfo location,
      Attributes attributes,
      Images images,
      OtherAttributes otherAttributes,
      Meta meta,
      Status status});

  $ContactInfoCopyWith<$Res> get contactInfo;
  $LocationInfoCopyWith<$Res> get location;
  $AttributesCopyWith<$Res> get attributes;
  $ImagesCopyWith<$Res> get images;
  $OtherAttributesCopyWith<$Res> get otherAttributes;
  $MetaCopyWith<$Res> get meta;
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$TaxonomyItemCopyWithImpl<$Res, $Val extends TaxonomyItem>
    implements $TaxonomyItemCopyWith<$Res> {
  _$TaxonomyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? taxonomyId = null,
    Object? name = null,
    Object? description = null,
    Object? contactInfo = null,
    Object? location = null,
    Object? attributes = null,
    Object? images = null,
    Object? otherAttributes = null,
    Object? meta = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      taxonomyId: null == taxonomyId
          ? _value.taxonomyId
          : taxonomyId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
      otherAttributes: null == otherAttributes
          ? _value.otherAttributes
          : otherAttributes // ignore: cast_nullable_to_non_nullable
              as OtherAttributes,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res> get contactInfo {
    return $ContactInfoCopyWith<$Res>(_value.contactInfo, (value) {
      return _then(_value.copyWith(contactInfo: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationInfoCopyWith<$Res> get location {
    return $LocationInfoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<$Res> get images {
    return $ImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtherAttributesCopyWith<$Res> get otherAttributes {
    return $OtherAttributesCopyWith<$Res>(_value.otherAttributes, (value) {
      return _then(_value.copyWith(otherAttributes: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaxonomyItemImplCopyWith<$Res>
    implements $TaxonomyItemCopyWith<$Res> {
  factory _$$TaxonomyItemImplCopyWith(
          _$TaxonomyItemImpl value, $Res Function(_$TaxonomyItemImpl) then) =
      __$$TaxonomyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String taxonomyId,
      String name,
      String description,
      ContactInfo contactInfo,
      LocationInfo location,
      Attributes attributes,
      Images images,
      OtherAttributes otherAttributes,
      Meta meta,
      Status status});

  @override
  $ContactInfoCopyWith<$Res> get contactInfo;
  @override
  $LocationInfoCopyWith<$Res> get location;
  @override
  $AttributesCopyWith<$Res> get attributes;
  @override
  $ImagesCopyWith<$Res> get images;
  @override
  $OtherAttributesCopyWith<$Res> get otherAttributes;
  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$TaxonomyItemImplCopyWithImpl<$Res>
    extends _$TaxonomyItemCopyWithImpl<$Res, _$TaxonomyItemImpl>
    implements _$$TaxonomyItemImplCopyWith<$Res> {
  __$$TaxonomyItemImplCopyWithImpl(
      _$TaxonomyItemImpl _value, $Res Function(_$TaxonomyItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? taxonomyId = null,
    Object? name = null,
    Object? description = null,
    Object? contactInfo = null,
    Object? location = null,
    Object? attributes = null,
    Object? images = null,
    Object? otherAttributes = null,
    Object? meta = null,
    Object? status = null,
  }) {
    return _then(_$TaxonomyItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      taxonomyId: null == taxonomyId
          ? _value.taxonomyId
          : taxonomyId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
      otherAttributes: null == otherAttributes
          ? _value.otherAttributes
          : otherAttributes // ignore: cast_nullable_to_non_nullable
              as OtherAttributes,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxonomyItemImpl implements _TaxonomyItem {
  const _$TaxonomyItemImpl(
      {required this.itemId,
      required this.taxonomyId,
      required this.name,
      required this.description,
      required this.contactInfo,
      required this.location,
      required this.attributes,
      required this.images,
      required this.otherAttributes,
      required this.meta,
      required this.status});

  factory _$TaxonomyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxonomyItemImplFromJson(json);

  @override
  final String itemId;
  @override
  final String taxonomyId;
  @override
  final String name;
  @override
  final String description;
  @override
  final ContactInfo contactInfo;
  @override
  final LocationInfo location;
  @override
  final Attributes attributes;
  @override
  final Images images;
  @override
  final OtherAttributes otherAttributes;
  @override
  final Meta meta;
  @override
  final Status status;

  @override
  String toString() {
    return 'TaxonomyItem(itemId: $itemId, taxonomyId: $taxonomyId, name: $name, description: $description, contactInfo: $contactInfo, location: $location, attributes: $attributes, images: $images, otherAttributes: $otherAttributes, meta: $meta, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxonomyItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.taxonomyId, taxonomyId) ||
                other.taxonomyId == taxonomyId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.otherAttributes, otherAttributes) ||
                other.otherAttributes == otherAttributes) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      taxonomyId,
      name,
      description,
      contactInfo,
      location,
      attributes,
      images,
      otherAttributes,
      meta,
      status);

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxonomyItemImplCopyWith<_$TaxonomyItemImpl> get copyWith =>
      __$$TaxonomyItemImplCopyWithImpl<_$TaxonomyItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxonomyItemImplToJson(
      this,
    );
  }
}

abstract class _TaxonomyItem implements TaxonomyItem {
  const factory _TaxonomyItem(
      {required final String itemId,
      required final String taxonomyId,
      required final String name,
      required final String description,
      required final ContactInfo contactInfo,
      required final LocationInfo location,
      required final Attributes attributes,
      required final Images images,
      required final OtherAttributes otherAttributes,
      required final Meta meta,
      required final Status status}) = _$TaxonomyItemImpl;

  factory _TaxonomyItem.fromJson(Map<String, dynamic> json) =
      _$TaxonomyItemImpl.fromJson;

  @override
  String get itemId;
  @override
  String get taxonomyId;
  @override
  String get name;
  @override
  String get description;
  @override
  ContactInfo get contactInfo;
  @override
  LocationInfo get location;
  @override
  Attributes get attributes;
  @override
  Images get images;
  @override
  OtherAttributes get otherAttributes;
  @override
  Meta get meta;
  @override
  Status get status;

  /// Create a copy of TaxonomyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxonomyItemImplCopyWith<_$TaxonomyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this ContactInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res, ContactInfo>;
  @useResult
  $Res call(
      {String? email,
      String? website,
      String? countryCode,
      String? phoneNumber});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res, $Val extends ContactInfo>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactInfoImplCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$$ContactInfoImplCopyWith(
          _$ContactInfoImpl value, $Res Function(_$ContactInfoImpl) then) =
      __$$ContactInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? website,
      String? countryCode,
      String? phoneNumber});
}

/// @nodoc
class __$$ContactInfoImplCopyWithImpl<$Res>
    extends _$ContactInfoCopyWithImpl<$Res, _$ContactInfoImpl>
    implements _$$ContactInfoImplCopyWith<$Res> {
  __$$ContactInfoImplCopyWithImpl(
      _$ContactInfoImpl _value, $Res Function(_$ContactInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$ContactInfoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInfoImpl implements _ContactInfo {
  const _$ContactInfoImpl(
      {this.email, this.website, this.countryCode, this.phoneNumber});

  factory _$ContactInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactInfoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? countryCode;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'ContactInfo(email: $email, website: $website, countryCode: $countryCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactInfoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, website, countryCode, phoneNumber);

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      __$$ContactInfoImplCopyWithImpl<_$ContactInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInfoImplToJson(
      this,
    );
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(
      {final String? email,
      final String? website,
      final String? countryCode,
      final String? phoneNumber}) = _$ContactInfoImpl;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$ContactInfoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get countryCode;
  @override
  String? get phoneNumber;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return _LocationInfo.fromJson(json);
}

/// @nodoc
mixin _$LocationInfo {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get locality => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  List<NearbyLandmark> get nearbyLandmarks =>
      throw _privateConstructorUsedError;

  /// Serializes this LocationInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationInfoCopyWith<LocationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInfoCopyWith<$Res> {
  factory $LocationInfoCopyWith(
          LocationInfo value, $Res Function(LocationInfo) then) =
      _$LocationInfoCopyWithImpl<$Res, LocationInfo>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String? locality,
      String? state,
      String? country,
      String? address,
      String? city,
      String? zipCode,
      List<NearbyLandmark> nearbyLandmarks});
}

/// @nodoc
class _$LocationInfoCopyWithImpl<$Res, $Val extends LocationInfo>
    implements $LocationInfoCopyWith<$Res> {
  _$LocationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? locality = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? nearbyLandmarks = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nearbyLandmarks: null == nearbyLandmarks
          ? _value.nearbyLandmarks
          : nearbyLandmarks // ignore: cast_nullable_to_non_nullable
              as List<NearbyLandmark>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationInfoImplCopyWith<$Res>
    implements $LocationInfoCopyWith<$Res> {
  factory _$$LocationInfoImplCopyWith(
          _$LocationInfoImpl value, $Res Function(_$LocationInfoImpl) then) =
      __$$LocationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String? locality,
      String? state,
      String? country,
      String? address,
      String? city,
      String? zipCode,
      List<NearbyLandmark> nearbyLandmarks});
}

/// @nodoc
class __$$LocationInfoImplCopyWithImpl<$Res>
    extends _$LocationInfoCopyWithImpl<$Res, _$LocationInfoImpl>
    implements _$$LocationInfoImplCopyWith<$Res> {
  __$$LocationInfoImplCopyWithImpl(
      _$LocationInfoImpl _value, $Res Function(_$LocationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? locality = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? nearbyLandmarks = null,
  }) {
    return _then(_$LocationInfoImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nearbyLandmarks: null == nearbyLandmarks
          ? _value._nearbyLandmarks
          : nearbyLandmarks // ignore: cast_nullable_to_non_nullable
              as List<NearbyLandmark>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationInfoImpl implements _LocationInfo {
  const _$LocationInfoImpl(
      {required this.latitude,
      required this.longitude,
      this.locality,
      this.state,
      this.country,
      this.address,
      this.city,
      this.zipCode,
      final List<NearbyLandmark> nearbyLandmarks = const <NearbyLandmark>[]})
      : _nearbyLandmarks = nearbyLandmarks;

  factory _$LocationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationInfoImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? locality;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? zipCode;
  final List<NearbyLandmark> _nearbyLandmarks;
  @override
  @JsonKey()
  List<NearbyLandmark> get nearbyLandmarks {
    if (_nearbyLandmarks is EqualUnmodifiableListView) return _nearbyLandmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyLandmarks);
  }

  @override
  String toString() {
    return 'LocationInfo(latitude: $latitude, longitude: $longitude, locality: $locality, state: $state, country: $country, address: $address, city: $city, zipCode: $zipCode, nearbyLandmarks: $nearbyLandmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInfoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            const DeepCollectionEquality()
                .equals(other._nearbyLandmarks, _nearbyLandmarks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      locality,
      state,
      country,
      address,
      city,
      zipCode,
      const DeepCollectionEquality().hash(_nearbyLandmarks));

  /// Create a copy of LocationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInfoImplCopyWith<_$LocationInfoImpl> get copyWith =>
      __$$LocationInfoImplCopyWithImpl<_$LocationInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationInfoImplToJson(
      this,
    );
  }
}

abstract class _LocationInfo implements LocationInfo {
  const factory _LocationInfo(
      {required final double latitude,
      required final double longitude,
      final String? locality,
      final String? state,
      final String? country,
      final String? address,
      final String? city,
      final String? zipCode,
      final List<NearbyLandmark> nearbyLandmarks}) = _$LocationInfoImpl;

  factory _LocationInfo.fromJson(Map<String, dynamic> json) =
      _$LocationInfoImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get locality;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get zipCode;
  @override
  List<NearbyLandmark> get nearbyLandmarks;

  /// Create a copy of LocationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationInfoImplCopyWith<_$LocationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NearbyLandmark _$NearbyLandmarkFromJson(Map<String, dynamic> json) {
  return _NearbyLandmark.fromJson(json);
}

/// @nodoc
mixin _$NearbyLandmark {
  List<Landmark>? get nearby => throw _privateConstructorUsedError;
  List<Landmark>? get metro => throw _privateConstructorUsedError;
  List<Landmark>? get airport => throw _privateConstructorUsedError;
  List<Landmark>? get busStand => throw _privateConstructorUsedError;

  /// Serializes this NearbyLandmark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NearbyLandmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NearbyLandmarkCopyWith<NearbyLandmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyLandmarkCopyWith<$Res> {
  factory $NearbyLandmarkCopyWith(
          NearbyLandmark value, $Res Function(NearbyLandmark) then) =
      _$NearbyLandmarkCopyWithImpl<$Res, NearbyLandmark>;
  @useResult
  $Res call(
      {List<Landmark>? nearby,
      List<Landmark>? metro,
      List<Landmark>? airport,
      List<Landmark>? busStand});
}

/// @nodoc
class _$NearbyLandmarkCopyWithImpl<$Res, $Val extends NearbyLandmark>
    implements $NearbyLandmarkCopyWith<$Res> {
  _$NearbyLandmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NearbyLandmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearby = freezed,
    Object? metro = freezed,
    Object? airport = freezed,
    Object? busStand = freezed,
  }) {
    return _then(_value.copyWith(
      nearby: freezed == nearby
          ? _value.nearby
          : nearby // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      metro: freezed == metro
          ? _value.metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      airport: freezed == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      busStand: freezed == busStand
          ? _value.busStand
          : busStand // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NearbyLandmarkImplCopyWith<$Res>
    implements $NearbyLandmarkCopyWith<$Res> {
  factory _$$NearbyLandmarkImplCopyWith(_$NearbyLandmarkImpl value,
          $Res Function(_$NearbyLandmarkImpl) then) =
      __$$NearbyLandmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Landmark>? nearby,
      List<Landmark>? metro,
      List<Landmark>? airport,
      List<Landmark>? busStand});
}

/// @nodoc
class __$$NearbyLandmarkImplCopyWithImpl<$Res>
    extends _$NearbyLandmarkCopyWithImpl<$Res, _$NearbyLandmarkImpl>
    implements _$$NearbyLandmarkImplCopyWith<$Res> {
  __$$NearbyLandmarkImplCopyWithImpl(
      _$NearbyLandmarkImpl _value, $Res Function(_$NearbyLandmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of NearbyLandmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearby = freezed,
    Object? metro = freezed,
    Object? airport = freezed,
    Object? busStand = freezed,
  }) {
    return _then(_$NearbyLandmarkImpl(
      nearby: freezed == nearby
          ? _value._nearby
          : nearby // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      metro: freezed == metro
          ? _value._metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      airport: freezed == airport
          ? _value._airport
          : airport // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
      busStand: freezed == busStand
          ? _value._busStand
          : busStand // ignore: cast_nullable_to_non_nullable
              as List<Landmark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NearbyLandmarkImpl implements _NearbyLandmark {
  const _$NearbyLandmarkImpl(
      {final List<Landmark>? nearby,
      final List<Landmark>? metro,
      final List<Landmark>? airport,
      final List<Landmark>? busStand})
      : _nearby = nearby,
        _metro = metro,
        _airport = airport,
        _busStand = busStand;

  factory _$NearbyLandmarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$NearbyLandmarkImplFromJson(json);

  final List<Landmark>? _nearby;
  @override
  List<Landmark>? get nearby {
    final value = _nearby;
    if (value == null) return null;
    if (_nearby is EqualUnmodifiableListView) return _nearby;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Landmark>? _metro;
  @override
  List<Landmark>? get metro {
    final value = _metro;
    if (value == null) return null;
    if (_metro is EqualUnmodifiableListView) return _metro;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Landmark>? _airport;
  @override
  List<Landmark>? get airport {
    final value = _airport;
    if (value == null) return null;
    if (_airport is EqualUnmodifiableListView) return _airport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Landmark>? _busStand;
  @override
  List<Landmark>? get busStand {
    final value = _busStand;
    if (value == null) return null;
    if (_busStand is EqualUnmodifiableListView) return _busStand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NearbyLandmark(nearby: $nearby, metro: $metro, airport: $airport, busStand: $busStand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearbyLandmarkImpl &&
            const DeepCollectionEquality().equals(other._nearby, _nearby) &&
            const DeepCollectionEquality().equals(other._metro, _metro) &&
            const DeepCollectionEquality().equals(other._airport, _airport) &&
            const DeepCollectionEquality().equals(other._busStand, _busStand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nearby),
      const DeepCollectionEquality().hash(_metro),
      const DeepCollectionEquality().hash(_airport),
      const DeepCollectionEquality().hash(_busStand));

  /// Create a copy of NearbyLandmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NearbyLandmarkImplCopyWith<_$NearbyLandmarkImpl> get copyWith =>
      __$$NearbyLandmarkImplCopyWithImpl<_$NearbyLandmarkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NearbyLandmarkImplToJson(
      this,
    );
  }
}

abstract class _NearbyLandmark implements NearbyLandmark {
  const factory _NearbyLandmark(
      {final List<Landmark>? nearby,
      final List<Landmark>? metro,
      final List<Landmark>? airport,
      final List<Landmark>? busStand}) = _$NearbyLandmarkImpl;

  factory _NearbyLandmark.fromJson(Map<String, dynamic> json) =
      _$NearbyLandmarkImpl.fromJson;

  @override
  List<Landmark>? get nearby;
  @override
  List<Landmark>? get metro;
  @override
  List<Landmark>? get airport;
  @override
  List<Landmark>? get busStand;

  /// Create a copy of NearbyLandmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NearbyLandmarkImplCopyWith<_$NearbyLandmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Landmark _$LandmarkFromJson(Map<String, dynamic> json) {
  return _Landmark.fromJson(json);
}

/// @nodoc
mixin _$Landmark {
  String get name => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  LocationInfo get location => throw _privateConstructorUsedError;

  /// Serializes this Landmark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LandmarkCopyWith<Landmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandmarkCopyWith<$Res> {
  factory $LandmarkCopyWith(Landmark value, $Res Function(Landmark) then) =
      _$LandmarkCopyWithImpl<$Res, Landmark>;
  @useResult
  $Res call({String name, double distance, LocationInfo location});

  $LocationInfoCopyWith<$Res> get location;
}

/// @nodoc
class _$LandmarkCopyWithImpl<$Res, $Val extends Landmark>
    implements $LandmarkCopyWith<$Res> {
  _$LandmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? distance = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
    ) as $Val);
  }

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationInfoCopyWith<$Res> get location {
    return $LocationInfoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LandmarkImplCopyWith<$Res>
    implements $LandmarkCopyWith<$Res> {
  factory _$$LandmarkImplCopyWith(
          _$LandmarkImpl value, $Res Function(_$LandmarkImpl) then) =
      __$$LandmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double distance, LocationInfo location});

  @override
  $LocationInfoCopyWith<$Res> get location;
}

/// @nodoc
class __$$LandmarkImplCopyWithImpl<$Res>
    extends _$LandmarkCopyWithImpl<$Res, _$LandmarkImpl>
    implements _$$LandmarkImplCopyWith<$Res> {
  __$$LandmarkImplCopyWithImpl(
      _$LandmarkImpl _value, $Res Function(_$LandmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? distance = null,
    Object? location = null,
  }) {
    return _then(_$LandmarkImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandmarkImpl implements _Landmark {
  const _$LandmarkImpl(
      {required this.name, required this.distance, required this.location});

  factory _$LandmarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandmarkImplFromJson(json);

  @override
  final String name;
  @override
  final double distance;
  @override
  final LocationInfo location;

  @override
  String toString() {
    return 'Landmark(name: $name, distance: $distance, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandmarkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, distance, location);

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LandmarkImplCopyWith<_$LandmarkImpl> get copyWith =>
      __$$LandmarkImplCopyWithImpl<_$LandmarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandmarkImplToJson(
      this,
    );
  }
}

abstract class _Landmark implements Landmark {
  const factory _Landmark(
      {required final String name,
      required final double distance,
      required final LocationInfo location}) = _$LandmarkImpl;

  factory _Landmark.fromJson(Map<String, dynamic> json) =
      _$LandmarkImpl.fromJson;

  @override
  String get name;
  @override
  double get distance;
  @override
  LocationInfo get location;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LandmarkImplCopyWith<_$LandmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  bool get open => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String? get notice => throw _privateConstructorUsedError;

  /// Serializes this OpeningHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call({bool open, String startTime, String endTime, String? notice});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? notice = freezed,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHoursImplCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$OpeningHoursImplCopyWith(
          _$OpeningHoursImpl value, $Res Function(_$OpeningHoursImpl) then) =
      __$$OpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool open, String startTime, String endTime, String? notice});
}

/// @nodoc
class __$$OpeningHoursImplCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$OpeningHoursImpl>
    implements _$$OpeningHoursImplCopyWith<$Res> {
  __$$OpeningHoursImplCopyWithImpl(
      _$OpeningHoursImpl _value, $Res Function(_$OpeningHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? notice = freezed,
  }) {
    return _then(_$OpeningHoursImpl(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHoursImpl implements _OpeningHours {
  const _$OpeningHoursImpl(
      {this.open = false,
      required this.startTime,
      required this.endTime,
      this.notice});

  factory _$OpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursImplFromJson(json);

  @override
  @JsonKey()
  final bool open;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String? notice;

  @override
  String toString() {
    return 'OpeningHours(open: $open, startTime: $startTime, endTime: $endTime, notice: $notice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.notice, notice) || other.notice == notice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, open, startTime, endTime, notice);

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      __$$OpeningHoursImplCopyWithImpl<_$OpeningHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursImplToJson(
      this,
    );
  }
}

abstract class _OpeningHours implements OpeningHours {
  const factory _OpeningHours(
      {final bool open,
      required final String startTime,
      required final String endTime,
      final String? notice}) = _$OpeningHoursImpl;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursImpl.fromJson;

  @override
  bool get open;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String? get notice;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  HotelAttributes? get hotels => throw _privateConstructorUsedError;
  DineOutAttributes? get dineOut => throw _privateConstructorUsedError;
  CabAttributes? get cabs => throw _privateConstructorUsedError;
  GroceryAttributes? get grocery => throw _privateConstructorUsedError;
  FitnessAttributes? get fitness => throw _privateConstructorUsedError;
  BeautyAttributes? get beauty => throw _privateConstructorUsedError;

  /// Serializes this Attributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {HotelAttributes? hotels,
      DineOutAttributes? dineOut,
      CabAttributes? cabs,
      GroceryAttributes? grocery,
      FitnessAttributes? fitness,
      BeautyAttributes? beauty});

  $HotelAttributesCopyWith<$Res>? get hotels;
  $DineOutAttributesCopyWith<$Res>? get dineOut;
  $CabAttributesCopyWith<$Res>? get cabs;
  $GroceryAttributesCopyWith<$Res>? get grocery;
  $FitnessAttributesCopyWith<$Res>? get fitness;
  $BeautyAttributesCopyWith<$Res>? get beauty;
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
    Object? dineOut = freezed,
    Object? cabs = freezed,
    Object? grocery = freezed,
    Object? fitness = freezed,
    Object? beauty = freezed,
  }) {
    return _then(_value.copyWith(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelAttributes?,
      dineOut: freezed == dineOut
          ? _value.dineOut
          : dineOut // ignore: cast_nullable_to_non_nullable
              as DineOutAttributes?,
      cabs: freezed == cabs
          ? _value.cabs
          : cabs // ignore: cast_nullable_to_non_nullable
              as CabAttributes?,
      grocery: freezed == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as GroceryAttributes?,
      fitness: freezed == fitness
          ? _value.fitness
          : fitness // ignore: cast_nullable_to_non_nullable
              as FitnessAttributes?,
      beauty: freezed == beauty
          ? _value.beauty
          : beauty // ignore: cast_nullable_to_non_nullable
              as BeautyAttributes?,
    ) as $Val);
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelAttributesCopyWith<$Res>? get hotels {
    if (_value.hotels == null) {
      return null;
    }

    return $HotelAttributesCopyWith<$Res>(_value.hotels!, (value) {
      return _then(_value.copyWith(hotels: value) as $Val);
    });
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DineOutAttributesCopyWith<$Res>? get dineOut {
    if (_value.dineOut == null) {
      return null;
    }

    return $DineOutAttributesCopyWith<$Res>(_value.dineOut!, (value) {
      return _then(_value.copyWith(dineOut: value) as $Val);
    });
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CabAttributesCopyWith<$Res>? get cabs {
    if (_value.cabs == null) {
      return null;
    }

    return $CabAttributesCopyWith<$Res>(_value.cabs!, (value) {
      return _then(_value.copyWith(cabs: value) as $Val);
    });
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroceryAttributesCopyWith<$Res>? get grocery {
    if (_value.grocery == null) {
      return null;
    }

    return $GroceryAttributesCopyWith<$Res>(_value.grocery!, (value) {
      return _then(_value.copyWith(grocery: value) as $Val);
    });
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FitnessAttributesCopyWith<$Res>? get fitness {
    if (_value.fitness == null) {
      return null;
    }

    return $FitnessAttributesCopyWith<$Res>(_value.fitness!, (value) {
      return _then(_value.copyWith(fitness: value) as $Val);
    });
  }

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeautyAttributesCopyWith<$Res>? get beauty {
    if (_value.beauty == null) {
      return null;
    }

    return $BeautyAttributesCopyWith<$Res>(_value.beauty!, (value) {
      return _then(_value.copyWith(beauty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
          _$AttributesImpl value, $Res Function(_$AttributesImpl) then) =
      __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HotelAttributes? hotels,
      DineOutAttributes? dineOut,
      CabAttributes? cabs,
      GroceryAttributes? grocery,
      FitnessAttributes? fitness,
      BeautyAttributes? beauty});

  @override
  $HotelAttributesCopyWith<$Res>? get hotels;
  @override
  $DineOutAttributesCopyWith<$Res>? get dineOut;
  @override
  $CabAttributesCopyWith<$Res>? get cabs;
  @override
  $GroceryAttributesCopyWith<$Res>? get grocery;
  @override
  $FitnessAttributesCopyWith<$Res>? get fitness;
  @override
  $BeautyAttributesCopyWith<$Res>? get beauty;
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
      _$AttributesImpl _value, $Res Function(_$AttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
    Object? dineOut = freezed,
    Object? cabs = freezed,
    Object? grocery = freezed,
    Object? fitness = freezed,
    Object? beauty = freezed,
  }) {
    return _then(_$AttributesImpl(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelAttributes?,
      dineOut: freezed == dineOut
          ? _value.dineOut
          : dineOut // ignore: cast_nullable_to_non_nullable
              as DineOutAttributes?,
      cabs: freezed == cabs
          ? _value.cabs
          : cabs // ignore: cast_nullable_to_non_nullable
              as CabAttributes?,
      grocery: freezed == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as GroceryAttributes?,
      fitness: freezed == fitness
          ? _value.fitness
          : fitness // ignore: cast_nullable_to_non_nullable
              as FitnessAttributes?,
      beauty: freezed == beauty
          ? _value.beauty
          : beauty // ignore: cast_nullable_to_non_nullable
              as BeautyAttributes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl(
      {this.hotels,
      this.dineOut,
      this.cabs,
      this.grocery,
      this.fitness,
      this.beauty});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  final HotelAttributes? hotels;
  @override
  final DineOutAttributes? dineOut;
  @override
  final CabAttributes? cabs;
  @override
  final GroceryAttributes? grocery;
  @override
  final FitnessAttributes? fitness;
  @override
  final BeautyAttributes? beauty;

  @override
  String toString() {
    return 'Attributes(hotels: $hotels, dineOut: $dineOut, cabs: $cabs, grocery: $grocery, fitness: $fitness, beauty: $beauty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.hotels, hotels) || other.hotels == hotels) &&
            (identical(other.dineOut, dineOut) || other.dineOut == dineOut) &&
            (identical(other.cabs, cabs) || other.cabs == cabs) &&
            (identical(other.grocery, grocery) || other.grocery == grocery) &&
            (identical(other.fitness, fitness) || other.fitness == fitness) &&
            (identical(other.beauty, beauty) || other.beauty == beauty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hotels, dineOut, cabs, grocery, fitness, beauty);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {final HotelAttributes? hotels,
      final DineOutAttributes? dineOut,
      final CabAttributes? cabs,
      final GroceryAttributes? grocery,
      final FitnessAttributes? fitness,
      final BeautyAttributes? beauty}) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  HotelAttributes? get hotels;
  @override
  DineOutAttributes? get dineOut;
  @override
  CabAttributes? get cabs;
  @override
  GroceryAttributes? get grocery;
  @override
  FitnessAttributes? get fitness;
  @override
  BeautyAttributes? get beauty;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  String get thumbnail => throw _privateConstructorUsedError;
  ImageGallery get gallery => throw _privateConstructorUsedError;

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({String thumbnail, ImageGallery gallery});

  $ImageGalleryCopyWith<$Res> get gallery;
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? gallery = null,
  }) {
    return _then(_value.copyWith(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as ImageGallery,
    ) as $Val);
  }

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageGalleryCopyWith<$Res> get gallery {
    return $ImageGalleryCopyWith<$Res>(_value.gallery, (value) {
      return _then(_value.copyWith(gallery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumbnail, ImageGallery gallery});

  @override
  $ImageGalleryCopyWith<$Res> get gallery;
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? gallery = null,
  }) {
    return _then(_$ImagesImpl(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as ImageGallery,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl({required this.thumbnail, required this.gallery});

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  final String thumbnail;
  @override
  final ImageGallery gallery;

  @override
  String toString() {
    return 'Images(thumbnail: $thumbnail, gallery: $gallery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.gallery, gallery) || other.gallery == gallery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, gallery);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      {required final String thumbnail,
      required final ImageGallery gallery}) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  String get thumbnail;
  @override
  ImageGallery get gallery;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageGallery _$ImageGalleryFromJson(Map<String, dynamic> json) {
  return _ImageGallery.fromJson(json);
}

/// @nodoc
mixin _$ImageGallery {
  List<String> get original => throw _privateConstructorUsedError;
  List<String> get low => throw _privateConstructorUsedError;
  List<String> get medium => throw _privateConstructorUsedError;
  List<String> get high => throw _privateConstructorUsedError;

  /// Serializes this ImageGallery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageGallery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageGalleryCopyWith<ImageGallery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGalleryCopyWith<$Res> {
  factory $ImageGalleryCopyWith(
          ImageGallery value, $Res Function(ImageGallery) then) =
      _$ImageGalleryCopyWithImpl<$Res, ImageGallery>;
  @useResult
  $Res call(
      {List<String> original,
      List<String> low,
      List<String> medium,
      List<String> high});
}

/// @nodoc
class _$ImageGalleryCopyWithImpl<$Res, $Val extends ImageGallery>
    implements $ImageGalleryCopyWith<$Res> {
  _$ImageGalleryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageGallery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? low = null,
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as List<String>,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as List<String>,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageGalleryImplCopyWith<$Res>
    implements $ImageGalleryCopyWith<$Res> {
  factory _$$ImageGalleryImplCopyWith(
          _$ImageGalleryImpl value, $Res Function(_$ImageGalleryImpl) then) =
      __$$ImageGalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> original,
      List<String> low,
      List<String> medium,
      List<String> high});
}

/// @nodoc
class __$$ImageGalleryImplCopyWithImpl<$Res>
    extends _$ImageGalleryCopyWithImpl<$Res, _$ImageGalleryImpl>
    implements _$$ImageGalleryImplCopyWith<$Res> {
  __$$ImageGalleryImplCopyWithImpl(
      _$ImageGalleryImpl _value, $Res Function(_$ImageGalleryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageGallery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? low = null,
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_$ImageGalleryImpl(
      original: null == original
          ? _value._original
          : original // ignore: cast_nullable_to_non_nullable
              as List<String>,
      low: null == low
          ? _value._low
          : low // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medium: null == medium
          ? _value._medium
          : medium // ignore: cast_nullable_to_non_nullable
              as List<String>,
      high: null == high
          ? _value._high
          : high // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageGalleryImpl implements _ImageGallery {
  const _$ImageGalleryImpl(
      {final List<String> original = const <String>[],
      final List<String> low = const <String>[],
      final List<String> medium = const <String>[],
      final List<String> high = const <String>[]})
      : _original = original,
        _low = low,
        _medium = medium,
        _high = high;

  factory _$ImageGalleryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageGalleryImplFromJson(json);

  final List<String> _original;
  @override
  @JsonKey()
  List<String> get original {
    if (_original is EqualUnmodifiableListView) return _original;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_original);
  }

  final List<String> _low;
  @override
  @JsonKey()
  List<String> get low {
    if (_low is EqualUnmodifiableListView) return _low;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_low);
  }

  final List<String> _medium;
  @override
  @JsonKey()
  List<String> get medium {
    if (_medium is EqualUnmodifiableListView) return _medium;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medium);
  }

  final List<String> _high;
  @override
  @JsonKey()
  List<String> get high {
    if (_high is EqualUnmodifiableListView) return _high;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_high);
  }

  @override
  String toString() {
    return 'ImageGallery(original: $original, low: $low, medium: $medium, high: $high)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageGalleryImpl &&
            const DeepCollectionEquality().equals(other._original, _original) &&
            const DeepCollectionEquality().equals(other._low, _low) &&
            const DeepCollectionEquality().equals(other._medium, _medium) &&
            const DeepCollectionEquality().equals(other._high, _high));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_original),
      const DeepCollectionEquality().hash(_low),
      const DeepCollectionEquality().hash(_medium),
      const DeepCollectionEquality().hash(_high));

  /// Create a copy of ImageGallery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageGalleryImplCopyWith<_$ImageGalleryImpl> get copyWith =>
      __$$ImageGalleryImplCopyWithImpl<_$ImageGalleryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageGalleryImplToJson(
      this,
    );
  }
}

abstract class _ImageGallery implements ImageGallery {
  const factory _ImageGallery(
      {final List<String> original,
      final List<String> low,
      final List<String> medium,
      final List<String> high}) = _$ImageGalleryImpl;

  factory _ImageGallery.fromJson(Map<String, dynamic> json) =
      _$ImageGalleryImpl.fromJson;

  @override
  List<String> get original;
  @override
  List<String> get low;
  @override
  List<String> get medium;
  @override
  List<String> get high;

  /// Create a copy of ImageGallery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageGalleryImplCopyWith<_$ImageGalleryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherAttributes _$OtherAttributesFromJson(Map<String, dynamic> json) {
  return _OtherAttributes.fromJson(json);
}

/// @nodoc
mixin _$OtherAttributes {
  Ratings? get ratings => throw _privateConstructorUsedError;
  BookingInfo? get bookingInfo => throw _privateConstructorUsedError;
  Map<String, OpeningHours>? get openingHours =>
      throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  List<Promotion> get promotions => throw _privateConstructorUsedError;

  /// Serializes this OtherAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherAttributesCopyWith<OtherAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherAttributesCopyWith<$Res> {
  factory $OtherAttributesCopyWith(
          OtherAttributes value, $Res Function(OtherAttributes) then) =
      _$OtherAttributesCopyWithImpl<$Res, OtherAttributes>;
  @useResult
  $Res call(
      {Ratings? ratings,
      BookingInfo? bookingInfo,
      Map<String, OpeningHours>? openingHours,
      List<Review> reviews,
      List<Promotion> promotions});

  $RatingsCopyWith<$Res>? get ratings;
  $BookingInfoCopyWith<$Res>? get bookingInfo;
}

/// @nodoc
class _$OtherAttributesCopyWithImpl<$Res, $Val extends OtherAttributes>
    implements $OtherAttributesCopyWith<$Res> {
  _$OtherAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratings = freezed,
    Object? bookingInfo = freezed,
    Object? openingHours = freezed,
    Object? reviews = null,
    Object? promotions = null,
  }) {
    return _then(_value.copyWith(
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as Ratings?,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as BookingInfo?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<String, OpeningHours>?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
    ) as $Val);
  }

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingsCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $RatingsCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingInfoCopyWith<$Res>? get bookingInfo {
    if (_value.bookingInfo == null) {
      return null;
    }

    return $BookingInfoCopyWith<$Res>(_value.bookingInfo!, (value) {
      return _then(_value.copyWith(bookingInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherAttributesImplCopyWith<$Res>
    implements $OtherAttributesCopyWith<$Res> {
  factory _$$OtherAttributesImplCopyWith(_$OtherAttributesImpl value,
          $Res Function(_$OtherAttributesImpl) then) =
      __$$OtherAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ratings? ratings,
      BookingInfo? bookingInfo,
      Map<String, OpeningHours>? openingHours,
      List<Review> reviews,
      List<Promotion> promotions});

  @override
  $RatingsCopyWith<$Res>? get ratings;
  @override
  $BookingInfoCopyWith<$Res>? get bookingInfo;
}

/// @nodoc
class __$$OtherAttributesImplCopyWithImpl<$Res>
    extends _$OtherAttributesCopyWithImpl<$Res, _$OtherAttributesImpl>
    implements _$$OtherAttributesImplCopyWith<$Res> {
  __$$OtherAttributesImplCopyWithImpl(
      _$OtherAttributesImpl _value, $Res Function(_$OtherAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratings = freezed,
    Object? bookingInfo = freezed,
    Object? openingHours = freezed,
    Object? reviews = null,
    Object? promotions = null,
  }) {
    return _then(_$OtherAttributesImpl(
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as Ratings?,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as BookingInfo?,
      openingHours: freezed == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<String, OpeningHours>?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherAttributesImpl implements _OtherAttributes {
  const _$OtherAttributesImpl(
      {this.ratings,
      this.bookingInfo,
      final Map<String, OpeningHours>? openingHours,
      final List<Review> reviews = const <String>[],
      final List<Promotion> promotions = const <Promotion>[]})
      : _openingHours = openingHours,
        _reviews = reviews,
        _promotions = promotions;

  factory _$OtherAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherAttributesImplFromJson(json);

  @override
  final Ratings? ratings;
  @override
  final BookingInfo? bookingInfo;
  final Map<String, OpeningHours>? _openingHours;
  @override
  Map<String, OpeningHours>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableMapView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<Promotion> _promotions;
  @override
  @JsonKey()
  List<Promotion> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  String toString() {
    return 'OtherAttributes(ratings: $ratings, bookingInfo: $bookingInfo, openingHours: $openingHours, reviews: $reviews, promotions: $promotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherAttributesImpl &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.bookingInfo, bookingInfo) ||
                other.bookingInfo == bookingInfo) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ratings,
      bookingInfo,
      const DeepCollectionEquality().hash(_openingHours),
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_promotions));

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherAttributesImplCopyWith<_$OtherAttributesImpl> get copyWith =>
      __$$OtherAttributesImplCopyWithImpl<_$OtherAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherAttributesImplToJson(
      this,
    );
  }
}

abstract class _OtherAttributes implements OtherAttributes {
  const factory _OtherAttributes(
      {final Ratings? ratings,
      final BookingInfo? bookingInfo,
      final Map<String, OpeningHours>? openingHours,
      final List<Review> reviews,
      final List<Promotion> promotions}) = _$OtherAttributesImpl;

  factory _OtherAttributes.fromJson(Map<String, dynamic> json) =
      _$OtherAttributesImpl.fromJson;

  @override
  Ratings? get ratings;
  @override
  BookingInfo? get bookingInfo;
  @override
  Map<String, OpeningHours>? get openingHours;
  @override
  List<Review> get reviews;
  @override
  List<Promotion> get promotions;

  /// Create a copy of OtherAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherAttributesImplCopyWith<_$OtherAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  List<String> get taxonomies => throw _privateConstructorUsedError;
  List<String> get otherBranchIds => throw _privateConstructorUsedError;
  List<String> get locale => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {List<String> taxonomies,
      List<String> otherBranchIds,
      List<String> locale,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxonomies = null,
    Object? otherBranchIds = null,
    Object? locale = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      taxonomies: null == taxonomies
          ? _value.taxonomies
          : taxonomies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherBranchIds: null == otherBranchIds
          ? _value.otherBranchIds
          : otherBranchIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> taxonomies,
      List<String> otherBranchIds,
      List<String> locale,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxonomies = null,
    Object? otherBranchIds = null,
    Object? locale = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MetaImpl(
      taxonomies: null == taxonomies
          ? _value._taxonomies
          : taxonomies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherBranchIds: null == otherBranchIds
          ? _value._otherBranchIds
          : otherBranchIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      locale: null == locale
          ? _value._locale
          : locale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {final List<String> taxonomies = const <String>[],
      final List<String> otherBranchIds = const <String>[],
      final List<String> locale = const <String>[],
      required this.createdAt,
      required this.updatedAt})
      : _taxonomies = taxonomies,
        _otherBranchIds = otherBranchIds,
        _locale = locale;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  final List<String> _taxonomies;
  @override
  @JsonKey()
  List<String> get taxonomies {
    if (_taxonomies is EqualUnmodifiableListView) return _taxonomies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxonomies);
  }

  final List<String> _otherBranchIds;
  @override
  @JsonKey()
  List<String> get otherBranchIds {
    if (_otherBranchIds is EqualUnmodifiableListView) return _otherBranchIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherBranchIds);
  }

  final List<String> _locale;
  @override
  @JsonKey()
  List<String> get locale {
    if (_locale is EqualUnmodifiableListView) return _locale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locale);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'Meta(taxonomies: $taxonomies, otherBranchIds: $otherBranchIds, locale: $locale, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            const DeepCollectionEquality()
                .equals(other._taxonomies, _taxonomies) &&
            const DeepCollectionEquality()
                .equals(other._otherBranchIds, _otherBranchIds) &&
            const DeepCollectionEquality().equals(other._locale, _locale) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taxonomies),
      const DeepCollectionEquality().hash(_otherBranchIds),
      const DeepCollectionEquality().hash(_locale),
      createdAt,
      updatedAt);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {final List<String> taxonomies,
      final List<String> otherBranchIds,
      final List<String> locale,
      required final String createdAt,
      required final String updatedAt}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  List<String> get taxonomies;
  @override
  List<String> get otherBranchIds;
  @override
  List<String> get locale;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  bool get isActive => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({bool isActive, bool isDeleted});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive, bool isDeleted});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_$StatusImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl({this.isActive = false, this.isDeleted = false});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'Status(isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, isDeleted);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status({final bool isActive, final bool isDeleted}) =
      _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  bool get isActive;
  @override
  bool get isDeleted;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelAttributes _$HotelAttributesFromJson(Map<String, dynamic> json) {
  return _HotelAttributes.fromJson(json);
}

/// @nodoc
mixin _$HotelAttributes {
  RoomDetails get rooms => throw _privateConstructorUsedError;
  List<Amenity> get amenities => throw _privateConstructorUsedError;
  List<Facility> get facilities => throw _privateConstructorUsedError;
  List<Policy> get policies => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this HotelAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelAttributesCopyWith<HotelAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelAttributesCopyWith<$Res> {
  factory $HotelAttributesCopyWith(
          HotelAttributes value, $Res Function(HotelAttributes) then) =
      _$HotelAttributesCopyWithImpl<$Res, HotelAttributes>;
  @useResult
  $Res call(
      {RoomDetails rooms,
      List<Amenity> amenities,
      List<Facility> facilities,
      List<Policy> policies,
      Price price});

  $RoomDetailsCopyWith<$Res> get rooms;
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$HotelAttributesCopyWithImpl<$Res, $Val extends HotelAttributes>
    implements $HotelAttributesCopyWith<$Res> {
  _$HotelAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? amenities = null,
    Object? facilities = null,
    Object? policies = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomDetails,
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<Policy>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomDetailsCopyWith<$Res> get rooms {
    return $RoomDetailsCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelAttributesImplCopyWith<$Res>
    implements $HotelAttributesCopyWith<$Res> {
  factory _$$HotelAttributesImplCopyWith(_$HotelAttributesImpl value,
          $Res Function(_$HotelAttributesImpl) then) =
      __$$HotelAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomDetails rooms,
      List<Amenity> amenities,
      List<Facility> facilities,
      List<Policy> policies,
      Price price});

  @override
  $RoomDetailsCopyWith<$Res> get rooms;
  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$HotelAttributesImplCopyWithImpl<$Res>
    extends _$HotelAttributesCopyWithImpl<$Res, _$HotelAttributesImpl>
    implements _$$HotelAttributesImplCopyWith<$Res> {
  __$$HotelAttributesImplCopyWithImpl(
      _$HotelAttributesImpl _value, $Res Function(_$HotelAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? amenities = null,
    Object? facilities = null,
    Object? policies = null,
    Object? price = null,
  }) {
    return _then(_$HotelAttributesImpl(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomDetails,
      amenities: null == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      policies: null == policies
          ? _value._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<Policy>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelAttributesImpl implements _HotelAttributes {
  const _$HotelAttributesImpl(
      {required this.rooms,
      final List<Amenity> amenities = const <Amenity>[],
      final List<Facility> facilities = const <Facility>[],
      final List<Policy> policies = const <Policy>[],
      required this.price})
      : _amenities = amenities,
        _facilities = facilities,
        _policies = policies;

  factory _$HotelAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelAttributesImplFromJson(json);

  @override
  final RoomDetails rooms;
  final List<Amenity> _amenities;
  @override
  @JsonKey()
  List<Amenity> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  final List<Facility> _facilities;
  @override
  @JsonKey()
  List<Facility> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  final List<Policy> _policies;
  @override
  @JsonKey()
  List<Policy> get policies {
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_policies);
  }

  @override
  final Price price;

  @override
  String toString() {
    return 'HotelAttributes(rooms: $rooms, amenities: $amenities, facilities: $facilities, policies: $policies, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelAttributesImpl &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality().equals(other._policies, _policies) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rooms,
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_facilities),
      const DeepCollectionEquality().hash(_policies),
      price);

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelAttributesImplCopyWith<_$HotelAttributesImpl> get copyWith =>
      __$$HotelAttributesImplCopyWithImpl<_$HotelAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelAttributesImplToJson(
      this,
    );
  }
}

abstract class _HotelAttributes implements HotelAttributes {
  const factory _HotelAttributes(
      {required final RoomDetails rooms,
      final List<Amenity> amenities,
      final List<Facility> facilities,
      final List<Policy> policies,
      required final Price price}) = _$HotelAttributesImpl;

  factory _HotelAttributes.fromJson(Map<String, dynamic> json) =
      _$HotelAttributesImpl.fromJson;

  @override
  RoomDetails get rooms;
  @override
  List<Amenity> get amenities;
  @override
  List<Facility> get facilities;
  @override
  List<Policy> get policies;
  @override
  Price get price;

  /// Create a copy of HotelAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelAttributesImplCopyWith<_$HotelAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DineOutAttributes _$DineOutAttributesFromJson(Map<String, dynamic> json) {
  return _DineOutAttributes.fromJson(json);
}

/// @nodoc
mixin _$DineOutAttributes {
  List<String> get cuisines => throw _privateConstructorUsedError;
  List<MenuItem> get menu => throw _privateConstructorUsedError;
  String? get dineOutType =>
      throw _privateConstructorUsedError; // TODO: Make it enum
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this DineOutAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DineOutAttributesCopyWith<DineOutAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DineOutAttributesCopyWith<$Res> {
  factory $DineOutAttributesCopyWith(
          DineOutAttributes value, $Res Function(DineOutAttributes) then) =
      _$DineOutAttributesCopyWithImpl<$Res, DineOutAttributes>;
  @useResult
  $Res call(
      {List<String> cuisines,
      List<MenuItem> menu,
      String? dineOutType,
      Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$DineOutAttributesCopyWithImpl<$Res, $Val extends DineOutAttributes>
    implements $DineOutAttributesCopyWith<$Res> {
  _$DineOutAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisines = null,
    Object? menu = null,
    Object? dineOutType = freezed,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dineOutType: freezed == dineOutType
          ? _value.dineOutType
          : dineOutType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DineOutAttributesImplCopyWith<$Res>
    implements $DineOutAttributesCopyWith<$Res> {
  factory _$$DineOutAttributesImplCopyWith(_$DineOutAttributesImpl value,
          $Res Function(_$DineOutAttributesImpl) then) =
      __$$DineOutAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> cuisines,
      List<MenuItem> menu,
      String? dineOutType,
      Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$DineOutAttributesImplCopyWithImpl<$Res>
    extends _$DineOutAttributesCopyWithImpl<$Res, _$DineOutAttributesImpl>
    implements _$$DineOutAttributesImplCopyWith<$Res> {
  __$$DineOutAttributesImplCopyWithImpl(_$DineOutAttributesImpl _value,
      $Res Function(_$DineOutAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisines = null,
    Object? menu = null,
    Object? dineOutType = freezed,
    Object? price = null,
  }) {
    return _then(_$DineOutAttributesImpl(
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dineOutType: freezed == dineOutType
          ? _value.dineOutType
          : dineOutType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DineOutAttributesImpl implements _DineOutAttributes {
  const _$DineOutAttributesImpl(
      {final List<String> cuisines = const <String>[],
      final List<MenuItem> menu = const <MenuItem>[],
      this.dineOutType,
      required this.price})
      : _cuisines = cuisines,
        _menu = menu;

  factory _$DineOutAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DineOutAttributesImplFromJson(json);

  final List<String> _cuisines;
  @override
  @JsonKey()
  List<String> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<MenuItem> _menu;
  @override
  @JsonKey()
  List<MenuItem> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  final String? dineOutType;
// TODO: Make it enum
  @override
  final Price price;

  @override
  String toString() {
    return 'DineOutAttributes(cuisines: $cuisines, menu: $menu, dineOutType: $dineOutType, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DineOutAttributesImpl &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            (identical(other.dineOutType, dineOutType) ||
                other.dineOutType == dineOutType) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_menu),
      dineOutType,
      price);

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DineOutAttributesImplCopyWith<_$DineOutAttributesImpl> get copyWith =>
      __$$DineOutAttributesImplCopyWithImpl<_$DineOutAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DineOutAttributesImplToJson(
      this,
    );
  }
}

abstract class _DineOutAttributes implements DineOutAttributes {
  const factory _DineOutAttributes(
      {final List<String> cuisines,
      final List<MenuItem> menu,
      final String? dineOutType,
      required final Price price}) = _$DineOutAttributesImpl;

  factory _DineOutAttributes.fromJson(Map<String, dynamic> json) =
      _$DineOutAttributesImpl.fromJson;

  @override
  List<String> get cuisines;
  @override
  List<MenuItem> get menu;
  @override
  String? get dineOutType; // TODO: Make it enum
  @override
  Price get price;

  /// Create a copy of DineOutAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DineOutAttributesImplCopyWith<_$DineOutAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CabAttributes _$CabAttributesFromJson(Map<String, dynamic> json) {
  return _CabAttributes.fromJson(json);
}

/// @nodoc
mixin _$CabAttributes {
  String? get serviceType =>
      throw _privateConstructorUsedError; // TODO: Make it enum
  List<AvailableVehicle> get availableVehicles =>
      throw _privateConstructorUsedError;

  /// Serializes this CabAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CabAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CabAttributesCopyWith<CabAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CabAttributesCopyWith<$Res> {
  factory $CabAttributesCopyWith(
          CabAttributes value, $Res Function(CabAttributes) then) =
      _$CabAttributesCopyWithImpl<$Res, CabAttributes>;
  @useResult
  $Res call({String? serviceType, List<AvailableVehicle> availableVehicles});
}

/// @nodoc
class _$CabAttributesCopyWithImpl<$Res, $Val extends CabAttributes>
    implements $CabAttributesCopyWith<$Res> {
  _$CabAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CabAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceType = freezed,
    Object? availableVehicles = null,
  }) {
    return _then(_value.copyWith(
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      availableVehicles: null == availableVehicles
          ? _value.availableVehicles
          : availableVehicles // ignore: cast_nullable_to_non_nullable
              as List<AvailableVehicle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CabAttributesImplCopyWith<$Res>
    implements $CabAttributesCopyWith<$Res> {
  factory _$$CabAttributesImplCopyWith(
          _$CabAttributesImpl value, $Res Function(_$CabAttributesImpl) then) =
      __$$CabAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? serviceType, List<AvailableVehicle> availableVehicles});
}

/// @nodoc
class __$$CabAttributesImplCopyWithImpl<$Res>
    extends _$CabAttributesCopyWithImpl<$Res, _$CabAttributesImpl>
    implements _$$CabAttributesImplCopyWith<$Res> {
  __$$CabAttributesImplCopyWithImpl(
      _$CabAttributesImpl _value, $Res Function(_$CabAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CabAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceType = freezed,
    Object? availableVehicles = null,
  }) {
    return _then(_$CabAttributesImpl(
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      availableVehicles: null == availableVehicles
          ? _value._availableVehicles
          : availableVehicles // ignore: cast_nullable_to_non_nullable
              as List<AvailableVehicle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CabAttributesImpl implements _CabAttributes {
  const _$CabAttributesImpl(
      {this.serviceType,
      final List<AvailableVehicle> availableVehicles =
          const <AvailableVehicle>[]})
      : _availableVehicles = availableVehicles;

  factory _$CabAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CabAttributesImplFromJson(json);

  @override
  final String? serviceType;
// TODO: Make it enum
  final List<AvailableVehicle> _availableVehicles;
// TODO: Make it enum
  @override
  @JsonKey()
  List<AvailableVehicle> get availableVehicles {
    if (_availableVehicles is EqualUnmodifiableListView)
      return _availableVehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableVehicles);
  }

  @override
  String toString() {
    return 'CabAttributes(serviceType: $serviceType, availableVehicles: $availableVehicles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CabAttributesImpl &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            const DeepCollectionEquality()
                .equals(other._availableVehicles, _availableVehicles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, serviceType,
      const DeepCollectionEquality().hash(_availableVehicles));

  /// Create a copy of CabAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CabAttributesImplCopyWith<_$CabAttributesImpl> get copyWith =>
      __$$CabAttributesImplCopyWithImpl<_$CabAttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CabAttributesImplToJson(
      this,
    );
  }
}

abstract class _CabAttributes implements CabAttributes {
  const factory _CabAttributes(
      {final String? serviceType,
      final List<AvailableVehicle> availableVehicles}) = _$CabAttributesImpl;

  factory _CabAttributes.fromJson(Map<String, dynamic> json) =
      _$CabAttributesImpl.fromJson;

  @override
  String? get serviceType; // TODO: Make it enum
  @override
  List<AvailableVehicle> get availableVehicles;

  /// Create a copy of CabAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CabAttributesImplCopyWith<_$CabAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryAttributes _$GroceryAttributesFromJson(Map<String, dynamic> json) {
  return _GroceryAttributes.fromJson(json);
}

/// @nodoc
mixin _$GroceryAttributes {
  List<Product> get products => throw _privateConstructorUsedError;
  List<Facility> get facilities => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this GroceryAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroceryAttributesCopyWith<GroceryAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryAttributesCopyWith<$Res> {
  factory $GroceryAttributesCopyWith(
          GroceryAttributes value, $Res Function(GroceryAttributes) then) =
      _$GroceryAttributesCopyWithImpl<$Res, GroceryAttributes>;
  @useResult
  $Res call({List<Product> products, List<Facility> facilities, Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$GroceryAttributesCopyWithImpl<$Res, $Val extends GroceryAttributes>
    implements $GroceryAttributesCopyWith<$Res> {
  _$GroceryAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroceryAttributesImplCopyWith<$Res>
    implements $GroceryAttributesCopyWith<$Res> {
  factory _$$GroceryAttributesImplCopyWith(_$GroceryAttributesImpl value,
          $Res Function(_$GroceryAttributesImpl) then) =
      __$$GroceryAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, List<Facility> facilities, Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$GroceryAttributesImplCopyWithImpl<$Res>
    extends _$GroceryAttributesCopyWithImpl<$Res, _$GroceryAttributesImpl>
    implements _$$GroceryAttributesImplCopyWith<$Res> {
  __$$GroceryAttributesImplCopyWithImpl(_$GroceryAttributesImpl _value,
      $Res Function(_$GroceryAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_$GroceryAttributesImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryAttributesImpl implements _GroceryAttributes {
  const _$GroceryAttributesImpl(
      {final List<Product> products = const <Product>[],
      final List<Facility> facilities = const <Facility>[],
      required this.price})
      : _products = products,
        _facilities = facilities;

  factory _$GroceryAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryAttributesImplFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Facility> _facilities;
  @override
  @JsonKey()
  List<Facility> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  @override
  final Price price;

  @override
  String toString() {
    return 'GroceryAttributes(products: $products, facilities: $facilities, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryAttributesImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_facilities),
      price);

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryAttributesImplCopyWith<_$GroceryAttributesImpl> get copyWith =>
      __$$GroceryAttributesImplCopyWithImpl<_$GroceryAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryAttributesImplToJson(
      this,
    );
  }
}

abstract class _GroceryAttributes implements GroceryAttributes {
  const factory _GroceryAttributes(
      {final List<Product> products,
      final List<Facility> facilities,
      required final Price price}) = _$GroceryAttributesImpl;

  factory _GroceryAttributes.fromJson(Map<String, dynamic> json) =
      _$GroceryAttributesImpl.fromJson;

  @override
  List<Product> get products;
  @override
  List<Facility> get facilities;
  @override
  Price get price;

  /// Create a copy of GroceryAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroceryAttributesImplCopyWith<_$GroceryAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FitnessAttributes _$FitnessAttributesFromJson(Map<String, dynamic> json) {
  return _FitnessAttributes.fromJson(json);
}

/// @nodoc
mixin _$FitnessAttributes {
  String? get fitnessType =>
      throw _privateConstructorUsedError; // TODO: Make it enum
  List<Subtype> get subtypes => throw _privateConstructorUsedError;
  List<String> get facilities => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this FitnessAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FitnessAttributesCopyWith<FitnessAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitnessAttributesCopyWith<$Res> {
  factory $FitnessAttributesCopyWith(
          FitnessAttributes value, $Res Function(FitnessAttributes) then) =
      _$FitnessAttributesCopyWithImpl<$Res, FitnessAttributes>;
  @useResult
  $Res call(
      {String? fitnessType,
      List<Subtype> subtypes,
      List<String> facilities,
      Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$FitnessAttributesCopyWithImpl<$Res, $Val extends FitnessAttributes>
    implements $FitnessAttributesCopyWith<$Res> {
  _$FitnessAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fitnessType = freezed,
    Object? subtypes = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      fitnessType: freezed == fitnessType
          ? _value.fitnessType
          : fitnessType // ignore: cast_nullable_to_non_nullable
              as String?,
      subtypes: null == subtypes
          ? _value.subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<Subtype>,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FitnessAttributesImplCopyWith<$Res>
    implements $FitnessAttributesCopyWith<$Res> {
  factory _$$FitnessAttributesImplCopyWith(_$FitnessAttributesImpl value,
          $Res Function(_$FitnessAttributesImpl) then) =
      __$$FitnessAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fitnessType,
      List<Subtype> subtypes,
      List<String> facilities,
      Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$FitnessAttributesImplCopyWithImpl<$Res>
    extends _$FitnessAttributesCopyWithImpl<$Res, _$FitnessAttributesImpl>
    implements _$$FitnessAttributesImplCopyWith<$Res> {
  __$$FitnessAttributesImplCopyWithImpl(_$FitnessAttributesImpl _value,
      $Res Function(_$FitnessAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fitnessType = freezed,
    Object? subtypes = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_$FitnessAttributesImpl(
      fitnessType: freezed == fitnessType
          ? _value.fitnessType
          : fitnessType // ignore: cast_nullable_to_non_nullable
              as String?,
      subtypes: null == subtypes
          ? _value._subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<Subtype>,
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FitnessAttributesImpl implements _FitnessAttributes {
  const _$FitnessAttributesImpl(
      {this.fitnessType,
      final List<Subtype> subtypes = const <Subtype>[],
      final List<String> facilities = const <String>[],
      required this.price})
      : _subtypes = subtypes,
        _facilities = facilities;

  factory _$FitnessAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FitnessAttributesImplFromJson(json);

  @override
  final String? fitnessType;
// TODO: Make it enum
  final List<Subtype> _subtypes;
// TODO: Make it enum
  @override
  @JsonKey()
  List<Subtype> get subtypes {
    if (_subtypes is EqualUnmodifiableListView) return _subtypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtypes);
  }

  final List<String> _facilities;
  @override
  @JsonKey()
  List<String> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  @override
  final Price price;

  @override
  String toString() {
    return 'FitnessAttributes(fitnessType: $fitnessType, subtypes: $subtypes, facilities: $facilities, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FitnessAttributesImpl &&
            (identical(other.fitnessType, fitnessType) ||
                other.fitnessType == fitnessType) &&
            const DeepCollectionEquality().equals(other._subtypes, _subtypes) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fitnessType,
      const DeepCollectionEquality().hash(_subtypes),
      const DeepCollectionEquality().hash(_facilities),
      price);

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FitnessAttributesImplCopyWith<_$FitnessAttributesImpl> get copyWith =>
      __$$FitnessAttributesImplCopyWithImpl<_$FitnessAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FitnessAttributesImplToJson(
      this,
    );
  }
}

abstract class _FitnessAttributes implements FitnessAttributes {
  const factory _FitnessAttributes(
      {final String? fitnessType,
      final List<Subtype> subtypes,
      final List<String> facilities,
      required final Price price}) = _$FitnessAttributesImpl;

  factory _FitnessAttributes.fromJson(Map<String, dynamic> json) =
      _$FitnessAttributesImpl.fromJson;

  @override
  String? get fitnessType; // TODO: Make it enum
  @override
  List<Subtype> get subtypes;
  @override
  List<String> get facilities;
  @override
  Price get price;

  /// Create a copy of FitnessAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FitnessAttributesImplCopyWith<_$FitnessAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeautyAttributes _$BeautyAttributesFromJson(Map<String, dynamic> json) {
  return _BeautyAttributes.fromJson(json);
}

/// @nodoc
mixin _$BeautyAttributes {
  String get beautySalonType =>
      throw _privateConstructorUsedError; // TODO: Make it enum
  List<Service> get services => throw _privateConstructorUsedError;
  List<Facility> get facilities => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this BeautyAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeautyAttributesCopyWith<BeautyAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeautyAttributesCopyWith<$Res> {
  factory $BeautyAttributesCopyWith(
          BeautyAttributes value, $Res Function(BeautyAttributes) then) =
      _$BeautyAttributesCopyWithImpl<$Res, BeautyAttributes>;
  @useResult
  $Res call(
      {String beautySalonType,
      List<Service> services,
      List<Facility> facilities,
      Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$BeautyAttributesCopyWithImpl<$Res, $Val extends BeautyAttributes>
    implements $BeautyAttributesCopyWith<$Res> {
  _$BeautyAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beautySalonType = null,
    Object? services = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      beautySalonType: null == beautySalonType
          ? _value.beautySalonType
          : beautySalonType // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeautyAttributesImplCopyWith<$Res>
    implements $BeautyAttributesCopyWith<$Res> {
  factory _$$BeautyAttributesImplCopyWith(_$BeautyAttributesImpl value,
          $Res Function(_$BeautyAttributesImpl) then) =
      __$$BeautyAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String beautySalonType,
      List<Service> services,
      List<Facility> facilities,
      Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$BeautyAttributesImplCopyWithImpl<$Res>
    extends _$BeautyAttributesCopyWithImpl<$Res, _$BeautyAttributesImpl>
    implements _$$BeautyAttributesImplCopyWith<$Res> {
  __$$BeautyAttributesImplCopyWithImpl(_$BeautyAttributesImpl _value,
      $Res Function(_$BeautyAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beautySalonType = null,
    Object? services = null,
    Object? facilities = null,
    Object? price = null,
  }) {
    return _then(_$BeautyAttributesImpl(
      beautySalonType: null == beautySalonType
          ? _value.beautySalonType
          : beautySalonType // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeautyAttributesImpl implements _BeautyAttributes {
  const _$BeautyAttributesImpl(
      {required this.beautySalonType,
      final List<Service> services = const <Service>[],
      final List<Facility> facilities = const <Facility>[],
      required this.price})
      : _services = services,
        _facilities = facilities;

  factory _$BeautyAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeautyAttributesImplFromJson(json);

  @override
  final String beautySalonType;
// TODO: Make it enum
  final List<Service> _services;
// TODO: Make it enum
  @override
  @JsonKey()
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<Facility> _facilities;
  @override
  @JsonKey()
  List<Facility> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  @override
  final Price price;

  @override
  String toString() {
    return 'BeautyAttributes(beautySalonType: $beautySalonType, services: $services, facilities: $facilities, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeautyAttributesImpl &&
            (identical(other.beautySalonType, beautySalonType) ||
                other.beautySalonType == beautySalonType) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      beautySalonType,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_facilities),
      price);

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeautyAttributesImplCopyWith<_$BeautyAttributesImpl> get copyWith =>
      __$$BeautyAttributesImplCopyWithImpl<_$BeautyAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeautyAttributesImplToJson(
      this,
    );
  }
}

abstract class _BeautyAttributes implements BeautyAttributes {
  const factory _BeautyAttributes(
      {required final String beautySalonType,
      final List<Service> services,
      final List<Facility> facilities,
      required final Price price}) = _$BeautyAttributesImpl;

  factory _BeautyAttributes.fromJson(Map<String, dynamic> json) =
      _$BeautyAttributesImpl.fromJson;

  @override
  String get beautySalonType; // TODO: Make it enum
  @override
  List<Service> get services;
  @override
  List<Facility> get facilities;
  @override
  Price get price;

  /// Create a copy of BeautyAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeautyAttributesImplCopyWith<_$BeautyAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomDetails _$RoomDetailsFromJson(Map<String, dynamic> json) {
  return _RoomDetails.fromJson(json);
}

/// @nodoc
mixin _$RoomDetails {
  int get total => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  List<Room> get details => throw _privateConstructorUsedError;

  /// Serializes this RoomDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomDetailsCopyWith<RoomDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailsCopyWith<$Res> {
  factory $RoomDetailsCopyWith(
          RoomDetails value, $Res Function(RoomDetails) then) =
      _$RoomDetailsCopyWithImpl<$Res, RoomDetails>;
  @useResult
  $Res call({int total, int available, List<Room> details});
}

/// @nodoc
class _$RoomDetailsCopyWithImpl<$Res, $Val extends RoomDetails>
    implements $RoomDetailsCopyWith<$Res> {
  _$RoomDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDetailsImplCopyWith<$Res>
    implements $RoomDetailsCopyWith<$Res> {
  factory _$$RoomDetailsImplCopyWith(
          _$RoomDetailsImpl value, $Res Function(_$RoomDetailsImpl) then) =
      __$$RoomDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int available, List<Room> details});
}

/// @nodoc
class __$$RoomDetailsImplCopyWithImpl<$Res>
    extends _$RoomDetailsCopyWithImpl<$Res, _$RoomDetailsImpl>
    implements _$$RoomDetailsImplCopyWith<$Res> {
  __$$RoomDetailsImplCopyWithImpl(
      _$RoomDetailsImpl _value, $Res Function(_$RoomDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
    Object? details = null,
  }) {
    return _then(_$RoomDetailsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDetailsImpl implements _RoomDetails {
  const _$RoomDetailsImpl(
      {required this.total,
      required this.available,
      required final List<Room> details})
      : _details = details;

  factory _$RoomDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDetailsImplFromJson(json);

  @override
  final int total;
  @override
  final int available;
  final List<Room> _details;
  @override
  List<Room> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'RoomDetails(total: $total, available: $available, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDetailsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.available, available) ||
                other.available == available) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, available,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of RoomDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDetailsImplCopyWith<_$RoomDetailsImpl> get copyWith =>
      __$$RoomDetailsImplCopyWithImpl<_$RoomDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDetailsImplToJson(
      this,
    );
  }
}

abstract class _RoomDetails implements RoomDetails {
  const factory _RoomDetails(
      {required final int total,
      required final int available,
      required final List<Room> details}) = _$RoomDetailsImpl;

  factory _RoomDetails.fromJson(Map<String, dynamic> json) =
      _$RoomDetailsImpl.fromJson;

  @override
  int get total;
  @override
  int get available;
  @override
  List<Room> get details;

  /// Create a copy of RoomDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomDetailsImplCopyWith<_$RoomDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Amenity _$AmenityFromJson(Map<String, dynamic> json) {
  return _Amenity.fromJson(json);
}

/// @nodoc
mixin _$Amenity {
  String get name => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Amenity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmenityCopyWith<Amenity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityCopyWith<$Res> {
  factory $AmenityCopyWith(Amenity value, $Res Function(Amenity) then) =
      _$AmenityCopyWithImpl<$Res, Amenity>;
  @useResult
  $Res call({String name, String? iconUrl, String? description});
}

/// @nodoc
class _$AmenityCopyWithImpl<$Res, $Val extends Amenity>
    implements $AmenityCopyWith<$Res> {
  _$AmenityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmenityImplCopyWith<$Res> implements $AmenityCopyWith<$Res> {
  factory _$$AmenityImplCopyWith(
          _$AmenityImpl value, $Res Function(_$AmenityImpl) then) =
      __$$AmenityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? iconUrl, String? description});
}

/// @nodoc
class __$$AmenityImplCopyWithImpl<$Res>
    extends _$AmenityCopyWithImpl<$Res, _$AmenityImpl>
    implements _$$AmenityImplCopyWith<$Res> {
  __$$AmenityImplCopyWithImpl(
      _$AmenityImpl _value, $Res Function(_$AmenityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AmenityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmenityImpl implements _Amenity {
  const _$AmenityImpl({required this.name, this.iconUrl, this.description});

  factory _$AmenityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmenityImplFromJson(json);

  @override
  final String name;
  @override
  final String? iconUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'Amenity(name: $name, iconUrl: $iconUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl, description);

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenityImplCopyWith<_$AmenityImpl> get copyWith =>
      __$$AmenityImplCopyWithImpl<_$AmenityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmenityImplToJson(
      this,
    );
  }
}

abstract class _Amenity implements Amenity {
  const factory _Amenity(
      {required final String name,
      final String? iconUrl,
      final String? description}) = _$AmenityImpl;

  factory _Amenity.fromJson(Map<String, dynamic> json) = _$AmenityImpl.fromJson;

  @override
  String get name;
  @override
  String? get iconUrl;
  @override
  String? get description;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmenityImplCopyWith<_$AmenityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return _Facility.fromJson(json);
}

/// @nodoc
mixin _$Facility {
  String get name => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Facility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacilityCopyWith<Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) then) =
      _$FacilityCopyWithImpl<$Res, Facility>;
  @useResult
  $Res call({String name, String? iconUrl, String? description});
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res, $Val extends Facility>
    implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityImplCopyWith<$Res>
    implements $FacilityCopyWith<$Res> {
  factory _$$FacilityImplCopyWith(
          _$FacilityImpl value, $Res Function(_$FacilityImpl) then) =
      __$$FacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? iconUrl, String? description});
}

/// @nodoc
class __$$FacilityImplCopyWithImpl<$Res>
    extends _$FacilityCopyWithImpl<$Res, _$FacilityImpl>
    implements _$$FacilityImplCopyWith<$Res> {
  __$$FacilityImplCopyWithImpl(
      _$FacilityImpl _value, $Res Function(_$FacilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_$FacilityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityImpl implements _Facility {
  const _$FacilityImpl({required this.name, this.iconUrl, this.description});

  factory _$FacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityImplFromJson(json);

  @override
  final String name;
  @override
  final String? iconUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'Facility(name: $name, iconUrl: $iconUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl, description);

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      __$$FacilityImplCopyWithImpl<_$FacilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityImplToJson(
      this,
    );
  }
}

abstract class _Facility implements Facility {
  const factory _Facility(
      {required final String name,
      final String? iconUrl,
      final String? description}) = _$FacilityImpl;

  factory _Facility.fromJson(Map<String, dynamic> json) =
      _$FacilityImpl.fromJson;

  @override
  String get name;
  @override
  String? get iconUrl;
  @override
  String? get description;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return _Policy.fromJson(json);
}

/// @nodoc
mixin _$Policy {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Policy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res, Policy>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res, $Val extends Policy>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyImplCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$PolicyImplCopyWith(
          _$PolicyImpl value, $Res Function(_$PolicyImpl) then) =
      __$$PolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$PolicyImplCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$PolicyImpl>
    implements _$$PolicyImplCopyWith<$Res> {
  __$$PolicyImplCopyWithImpl(
      _$PolicyImpl _value, $Res Function(_$PolicyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$PolicyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyImpl implements _Policy {
  const _$PolicyImpl({required this.name, required this.description});

  factory _$PolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Policy(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      __$$PolicyImplCopyWithImpl<_$PolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyImplToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  const factory _Policy(
      {required final String name,
      required final String description}) = _$PolicyImpl;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$PolicyImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String get currency => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  PriceRange? get range => throw _privateConstructorUsedError;
  List<Discount> get discounts => throw _privateConstructorUsedError;

  /// Serializes this Price to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {String currency,
      String type,
      double? amount,
      PriceRange? range,
      List<Discount> discounts});

  $PriceRangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? type = null,
    Object? amount = freezed,
    Object? range = freezed,
    Object? discounts = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<Discount>,
    ) as $Val);
  }

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      String type,
      double? amount,
      PriceRange? range,
      List<Discount> discounts});

  @override
  $PriceRangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? type = null,
    Object? amount = freezed,
    Object? range = freezed,
    Object? discounts = null,
  }) {
    return _then(_$PriceImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<Discount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  const _$PriceImpl(
      {required this.currency,
      required this.type,
      this.amount,
      this.range,
      final List<Discount> discounts = const <Discount>[]})
      : _discounts = discounts;

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  final String currency;
  @override
  final String type;
  @override
  final double? amount;
  @override
  final PriceRange? range;
  final List<Discount> _discounts;
  @override
  @JsonKey()
  List<Discount> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'Price(currency: $currency, type: $type, amount: $amount, range: $range, discounts: $discounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currency, type, amount, range,
      const DeepCollectionEquality().hash(_discounts));

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String currency,
      required final String type,
      final double? amount,
      final PriceRange? range,
      final List<Discount> discounts}) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  String get currency;
  @override
  String get type;
  @override
  double? get amount;
  @override
  PriceRange? get range;
  @override
  List<Discount> get discounts;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) {
  return _PriceRange.fromJson(json);
}

/// @nodoc
mixin _$PriceRange {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;

  /// Serializes this PriceRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
          _$PriceRangeImpl value, $Res Function(_$PriceRangeImpl) then) =
      __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
      _$PriceRangeImpl _value, $Res Function(_$PriceRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$PriceRangeImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeImpl implements _PriceRange {
  const _$PriceRangeImpl({required this.min, required this.max});

  factory _$PriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeImplFromJson(json);

  @override
  final double min;
  @override
  final double max;

  @override
  String toString() {
    return 'PriceRange(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeImplToJson(
      this,
    );
  }
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange(
      {required final double min,
      required final double max}) = _$PriceRangeImpl;

  factory _PriceRange.fromJson(Map<String, dynamic> json) =
      _$PriceRangeImpl.fromJson;

  @override
  double get min;
  @override
  double get max;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  double? get percentage => throw _privateConstructorUsedError;
  double? get discountedPrice => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get validFrom => throw _privateConstructorUsedError;
  String? get validUntil => throw _privateConstructorUsedError;
  List<String> get conditions => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this Discount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call(
      {double? percentage,
      double? discountedPrice,
      String? description,
      String? validFrom,
      String? validUntil,
      List<String> conditions,
      bool isActive});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? discountedPrice = freezed,
    Object? description = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? conditions = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
          _$DiscountImpl value, $Res Function(_$DiscountImpl) then) =
      __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? percentage,
      double? discountedPrice,
      String? description,
      String? validFrom,
      String? validUntil,
      List<String> conditions,
      bool isActive});
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
      _$DiscountImpl _value, $Res Function(_$DiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? discountedPrice = freezed,
    Object? description = freezed,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
    Object? conditions = null,
    Object? isActive = null,
  }) {
    return _then(_$DiscountImpl(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountImpl implements _Discount {
  const _$DiscountImpl(
      {this.percentage,
      required this.discountedPrice,
      required this.description,
      required this.validFrom,
      required this.validUntil,
      final List<String> conditions = const <String>[],
      this.isActive = false})
      : _conditions = conditions;

  factory _$DiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountImplFromJson(json);

  @override
  final double? percentage;
  @override
  final double? discountedPrice;
  @override
  final String? description;
  @override
  final String? validFrom;
  @override
  final String? validUntil;
  final List<String> _conditions;
  @override
  @JsonKey()
  List<String> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'Discount(percentage: $percentage, discountedPrice: $discountedPrice, description: $description, validFrom: $validFrom, validUntil: $validUntil, conditions: $conditions, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      percentage,
      discountedPrice,
      description,
      validFrom,
      validUntil,
      const DeepCollectionEquality().hash(_conditions),
      isActive);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountImplToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  const factory _Discount(
      {final double? percentage,
      required final double? discountedPrice,
      required final String? description,
      required final String? validFrom,
      required final String? validUntil,
      final List<String> conditions,
      final bool isActive}) = _$DiscountImpl;

  factory _Discount.fromJson(Map<String, dynamic> json) =
      _$DiscountImpl.fromJson;

  @override
  double? get percentage;
  @override
  double? get discountedPrice;
  @override
  String? get description;
  @override
  String? get validFrom;
  @override
  String? get validUntil;
  @override
  List<String> get conditions;
  @override
  bool get isActive;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ratings _$RatingsFromJson(Map<String, dynamic> json) {
  return _Ratings.fromJson(json);
}

/// @nodoc
mixin _$Ratings {
  double get averageRating => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;

  /// Serializes this Ratings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingsCopyWith<Ratings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingsCopyWith<$Res> {
  factory $RatingsCopyWith(Ratings value, $Res Function(Ratings) then) =
      _$RatingsCopyWithImpl<$Res, Ratings>;
  @useResult
  $Res call({double averageRating, int totalRatings});
}

/// @nodoc
class _$RatingsCopyWithImpl<$Res, $Val extends Ratings>
    implements $RatingsCopyWith<$Res> {
  _$RatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalRatings = null,
  }) {
    return _then(_value.copyWith(
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingsImplCopyWith<$Res> implements $RatingsCopyWith<$Res> {
  factory _$$RatingsImplCopyWith(
          _$RatingsImpl value, $Res Function(_$RatingsImpl) then) =
      __$$RatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double averageRating, int totalRatings});
}

/// @nodoc
class __$$RatingsImplCopyWithImpl<$Res>
    extends _$RatingsCopyWithImpl<$Res, _$RatingsImpl>
    implements _$$RatingsImplCopyWith<$Res> {
  __$$RatingsImplCopyWithImpl(
      _$RatingsImpl _value, $Res Function(_$RatingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalRatings = null,
  }) {
    return _then(_$RatingsImpl(
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingsImpl implements _Ratings {
  const _$RatingsImpl(
      {required this.averageRating, required this.totalRatings});

  factory _$RatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingsImplFromJson(json);

  @override
  final double averageRating;
  @override
  final int totalRatings;

  @override
  String toString() {
    return 'Ratings(averageRating: $averageRating, totalRatings: $totalRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingsImpl &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, averageRating, totalRatings);

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      __$$RatingsImplCopyWithImpl<_$RatingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingsImplToJson(
      this,
    );
  }
}

abstract class _Ratings implements Ratings {
  const factory _Ratings(
      {required final double averageRating,
      required final int totalRatings}) = _$RatingsImpl;

  factory _Ratings.fromJson(Map<String, dynamic> json) = _$RatingsImpl.fromJson;

  @override
  double get averageRating;
  @override
  int get totalRatings;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingBreakdown _$RatingBreakdownFromJson(Map<String, dynamic> json) {
  return _RatingBreakdown.fromJson(json);
}

/// @nodoc
mixin _$RatingBreakdown {
  int get fiveStar => throw _privateConstructorUsedError;
  int get fourStar => throw _privateConstructorUsedError;
  int get threeStar => throw _privateConstructorUsedError;
  int get twoStar => throw _privateConstructorUsedError;
  int get oneStar => throw _privateConstructorUsedError;

  /// Serializes this RatingBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingBreakdownCopyWith<RatingBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingBreakdownCopyWith<$Res> {
  factory $RatingBreakdownCopyWith(
          RatingBreakdown value, $Res Function(RatingBreakdown) then) =
      _$RatingBreakdownCopyWithImpl<$Res, RatingBreakdown>;
  @useResult
  $Res call(
      {int fiveStar, int fourStar, int threeStar, int twoStar, int oneStar});
}

/// @nodoc
class _$RatingBreakdownCopyWithImpl<$Res, $Val extends RatingBreakdown>
    implements $RatingBreakdownCopyWith<$Res> {
  _$RatingBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiveStar = null,
    Object? fourStar = null,
    Object? threeStar = null,
    Object? twoStar = null,
    Object? oneStar = null,
  }) {
    return _then(_value.copyWith(
      fiveStar: null == fiveStar
          ? _value.fiveStar
          : fiveStar // ignore: cast_nullable_to_non_nullable
              as int,
      fourStar: null == fourStar
          ? _value.fourStar
          : fourStar // ignore: cast_nullable_to_non_nullable
              as int,
      threeStar: null == threeStar
          ? _value.threeStar
          : threeStar // ignore: cast_nullable_to_non_nullable
              as int,
      twoStar: null == twoStar
          ? _value.twoStar
          : twoStar // ignore: cast_nullable_to_non_nullable
              as int,
      oneStar: null == oneStar
          ? _value.oneStar
          : oneStar // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingBreakdownImplCopyWith<$Res>
    implements $RatingBreakdownCopyWith<$Res> {
  factory _$$RatingBreakdownImplCopyWith(_$RatingBreakdownImpl value,
          $Res Function(_$RatingBreakdownImpl) then) =
      __$$RatingBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fiveStar, int fourStar, int threeStar, int twoStar, int oneStar});
}

/// @nodoc
class __$$RatingBreakdownImplCopyWithImpl<$Res>
    extends _$RatingBreakdownCopyWithImpl<$Res, _$RatingBreakdownImpl>
    implements _$$RatingBreakdownImplCopyWith<$Res> {
  __$$RatingBreakdownImplCopyWithImpl(
      _$RatingBreakdownImpl _value, $Res Function(_$RatingBreakdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiveStar = null,
    Object? fourStar = null,
    Object? threeStar = null,
    Object? twoStar = null,
    Object? oneStar = null,
  }) {
    return _then(_$RatingBreakdownImpl(
      fiveStar: null == fiveStar
          ? _value.fiveStar
          : fiveStar // ignore: cast_nullable_to_non_nullable
              as int,
      fourStar: null == fourStar
          ? _value.fourStar
          : fourStar // ignore: cast_nullable_to_non_nullable
              as int,
      threeStar: null == threeStar
          ? _value.threeStar
          : threeStar // ignore: cast_nullable_to_non_nullable
              as int,
      twoStar: null == twoStar
          ? _value.twoStar
          : twoStar // ignore: cast_nullable_to_non_nullable
              as int,
      oneStar: null == oneStar
          ? _value.oneStar
          : oneStar // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingBreakdownImpl implements _RatingBreakdown {
  const _$RatingBreakdownImpl(
      {required this.fiveStar,
      required this.fourStar,
      required this.threeStar,
      required this.twoStar,
      required this.oneStar});

  factory _$RatingBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingBreakdownImplFromJson(json);

  @override
  final int fiveStar;
  @override
  final int fourStar;
  @override
  final int threeStar;
  @override
  final int twoStar;
  @override
  final int oneStar;

  @override
  String toString() {
    return 'RatingBreakdown(fiveStar: $fiveStar, fourStar: $fourStar, threeStar: $threeStar, twoStar: $twoStar, oneStar: $oneStar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingBreakdownImpl &&
            (identical(other.fiveStar, fiveStar) ||
                other.fiveStar == fiveStar) &&
            (identical(other.fourStar, fourStar) ||
                other.fourStar == fourStar) &&
            (identical(other.threeStar, threeStar) ||
                other.threeStar == threeStar) &&
            (identical(other.twoStar, twoStar) || other.twoStar == twoStar) &&
            (identical(other.oneStar, oneStar) || other.oneStar == oneStar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fiveStar, fourStar, threeStar, twoStar, oneStar);

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingBreakdownImplCopyWith<_$RatingBreakdownImpl> get copyWith =>
      __$$RatingBreakdownImplCopyWithImpl<_$RatingBreakdownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingBreakdownImplToJson(
      this,
    );
  }
}

abstract class _RatingBreakdown implements RatingBreakdown {
  const factory _RatingBreakdown(
      {required final int fiveStar,
      required final int fourStar,
      required final int threeStar,
      required final int twoStar,
      required final int oneStar}) = _$RatingBreakdownImpl;

  factory _RatingBreakdown.fromJson(Map<String, dynamic> json) =
      _$RatingBreakdownImpl.fromJson;

  @override
  int get fiveStar;
  @override
  int get fourStar;
  @override
  int get threeStar;
  @override
  int get twoStar;
  @override
  int get oneStar;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingBreakdownImplCopyWith<_$RatingBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get reviewId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String reviewId,
      String userId,
      String userName,
      double rating,
      String? comment,
      String createdAt});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? userId = null,
    Object? userName = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewId,
      String userId,
      String userName,
      double rating,
      String? comment,
      String createdAt});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? userId = null,
    Object? userName = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ReviewImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {required this.reviewId,
      required this.userId,
      required this.userName,
      required this.rating,
      this.comment,
      required this.createdAt});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String reviewId;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final double rating;
  @override
  final String? comment;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'Review(reviewId: $reviewId, userId: $userId, userName: $userName, rating: $rating, comment: $comment, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reviewId, userId, userName, rating, comment, createdAt);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String reviewId,
      required final String userId,
      required final String userName,
      required final double rating,
      final String? comment,
      required final String createdAt}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String get reviewId;
  @override
  String get userId;
  @override
  String get userName;
  @override
  double get rating;
  @override
  String? get comment;
  @override
  String get createdAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingInfo _$BookingInfoFromJson(Map<String, dynamic> json) {
  return _BookingInfo.fromJson(json);
}

/// @nodoc
mixin _$BookingInfo {
  bool get isBookable => throw _privateConstructorUsedError;
  String? get bookingUrl => throw _privateConstructorUsedError;
  String? get bookingContact => throw _privateConstructorUsedError;

  /// Serializes this BookingInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingInfoCopyWith<BookingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingInfoCopyWith<$Res> {
  factory $BookingInfoCopyWith(
          BookingInfo value, $Res Function(BookingInfo) then) =
      _$BookingInfoCopyWithImpl<$Res, BookingInfo>;
  @useResult
  $Res call({bool isBookable, String? bookingUrl, String? bookingContact});
}

/// @nodoc
class _$BookingInfoCopyWithImpl<$Res, $Val extends BookingInfo>
    implements $BookingInfoCopyWith<$Res> {
  _$BookingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookable = null,
    Object? bookingUrl = freezed,
    Object? bookingContact = freezed,
  }) {
    return _then(_value.copyWith(
      isBookable: null == isBookable
          ? _value.isBookable
          : isBookable // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingUrl: freezed == bookingUrl
          ? _value.bookingUrl
          : bookingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingContact: freezed == bookingContact
          ? _value.bookingContact
          : bookingContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingInfoImplCopyWith<$Res>
    implements $BookingInfoCopyWith<$Res> {
  factory _$$BookingInfoImplCopyWith(
          _$BookingInfoImpl value, $Res Function(_$BookingInfoImpl) then) =
      __$$BookingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBookable, String? bookingUrl, String? bookingContact});
}

/// @nodoc
class __$$BookingInfoImplCopyWithImpl<$Res>
    extends _$BookingInfoCopyWithImpl<$Res, _$BookingInfoImpl>
    implements _$$BookingInfoImplCopyWith<$Res> {
  __$$BookingInfoImplCopyWithImpl(
      _$BookingInfoImpl _value, $Res Function(_$BookingInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookable = null,
    Object? bookingUrl = freezed,
    Object? bookingContact = freezed,
  }) {
    return _then(_$BookingInfoImpl(
      isBookable: null == isBookable
          ? _value.isBookable
          : isBookable // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingUrl: freezed == bookingUrl
          ? _value.bookingUrl
          : bookingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingContact: freezed == bookingContact
          ? _value.bookingContact
          : bookingContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingInfoImpl implements _BookingInfo {
  const _$BookingInfoImpl(
      {this.isBookable = false, this.bookingUrl, this.bookingContact});

  factory _$BookingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingInfoImplFromJson(json);

  @override
  @JsonKey()
  final bool isBookable;
  @override
  final String? bookingUrl;
  @override
  final String? bookingContact;

  @override
  String toString() {
    return 'BookingInfo(isBookable: $isBookable, bookingUrl: $bookingUrl, bookingContact: $bookingContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingInfoImpl &&
            (identical(other.isBookable, isBookable) ||
                other.isBookable == isBookable) &&
            (identical(other.bookingUrl, bookingUrl) ||
                other.bookingUrl == bookingUrl) &&
            (identical(other.bookingContact, bookingContact) ||
                other.bookingContact == bookingContact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isBookable, bookingUrl, bookingContact);

  /// Create a copy of BookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingInfoImplCopyWith<_$BookingInfoImpl> get copyWith =>
      __$$BookingInfoImplCopyWithImpl<_$BookingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingInfoImplToJson(
      this,
    );
  }
}

abstract class _BookingInfo implements BookingInfo {
  const factory _BookingInfo(
      {final bool isBookable,
      final String? bookingUrl,
      final String? bookingContact}) = _$BookingInfoImpl;

  factory _BookingInfo.fromJson(Map<String, dynamic> json) =
      _$BookingInfoImpl.fromJson;

  @override
  bool get isBookable;
  @override
  String? get bookingUrl;
  @override
  String? get bookingContact;

  /// Create a copy of BookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingInfoImplCopyWith<_$BookingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return _Promotion.fromJson(json);
}

/// @nodoc
mixin _$Promotion {
  String get promoId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this Promotion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res, Promotion>;
  @useResult
  $Res call(
      {String promoId,
      String name,
      String description,
      double discountPercentage,
      String startDate,
      String endDate,
      bool isActive});
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res, $Val extends Promotion>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoId = null,
    Object? name = null,
    Object? description = null,
    Object? discountPercentage = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      promoId: null == promoId
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionImplCopyWith<$Res>
    implements $PromotionCopyWith<$Res> {
  factory _$$PromotionImplCopyWith(
          _$PromotionImpl value, $Res Function(_$PromotionImpl) then) =
      __$$PromotionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String promoId,
      String name,
      String description,
      double discountPercentage,
      String startDate,
      String endDate,
      bool isActive});
}

/// @nodoc
class __$$PromotionImplCopyWithImpl<$Res>
    extends _$PromotionCopyWithImpl<$Res, _$PromotionImpl>
    implements _$$PromotionImplCopyWith<$Res> {
  __$$PromotionImplCopyWithImpl(
      _$PromotionImpl _value, $Res Function(_$PromotionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoId = null,
    Object? name = null,
    Object? description = null,
    Object? discountPercentage = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
  }) {
    return _then(_$PromotionImpl(
      promoId: null == promoId
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionImpl implements _Promotion {
  const _$PromotionImpl(
      {required this.promoId,
      required this.name,
      required this.description,
      required this.discountPercentage,
      required this.startDate,
      required this.endDate,
      this.isActive = false});

  factory _$PromotionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionImplFromJson(json);

  @override
  final String promoId;
  @override
  final String name;
  @override
  final String description;
  @override
  final double discountPercentage;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'Promotion(promoId: $promoId, name: $name, description: $description, discountPercentage: $discountPercentage, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionImpl &&
            (identical(other.promoId, promoId) || other.promoId == promoId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, promoId, name, description,
      discountPercentage, startDate, endDate, isActive);

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      __$$PromotionImplCopyWithImpl<_$PromotionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionImplToJson(
      this,
    );
  }
}

abstract class _Promotion implements Promotion {
  const factory _Promotion(
      {required final String promoId,
      required final String name,
      required final String description,
      required final double discountPercentage,
      required final String startDate,
      required final String endDate,
      final bool isActive}) = _$PromotionImpl;

  factory _Promotion.fromJson(Map<String, dynamic> json) =
      _$PromotionImpl.fromJson;

  @override
  String get promoId;
  @override
  String get name;
  @override
  String get description;
  @override
  double get discountPercentage;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  bool get isActive;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call(
      {String name,
      String category,
      double price,
      bool isAvailable,
      String? description});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
          _$MenuItemImpl value, $Res Function(_$MenuItemImpl) then) =
      __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String category,
      double price,
      bool isAvailable,
      String? description});
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
      _$MenuItemImpl _value, $Res Function(_$MenuItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? description = freezed,
  }) {
    return _then(_$MenuItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl(
      {required this.name,
      required this.category,
      required this.price,
      this.isAvailable = false,
      this.description});

  factory _$MenuItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemImplFromJson(json);

  @override
  final String name;
  @override
  final String category;
  @override
  final double price;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final String? description;

  @override
  String toString() {
    return 'MenuItem(name: $name, category: $category, price: $price, isAvailable: $isAvailable, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, category, price, isAvailable, description);

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemImplToJson(
      this,
    );
  }
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem(
      {required final String name,
      required final String category,
      required final double price,
      final bool isAvailable,
      final String? description}) = _$MenuItemImpl;

  factory _MenuItem.fromJson(Map<String, dynamic> json) =
      _$MenuItemImpl.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  double get price;
  @override
  bool get isAvailable;
  @override
  String? get description;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableVehicle _$AvailableVehicleFromJson(Map<String, dynamic> json) {
  return _AvailableVehicle.fromJson(json);
}

/// @nodoc
mixin _$AvailableVehicle {
  String get vehicleType => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this AvailableVehicle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableVehicleCopyWith<AvailableVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableVehicleCopyWith<$Res> {
  factory $AvailableVehicleCopyWith(
          AvailableVehicle value, $Res Function(AvailableVehicle) then) =
      _$AvailableVehicleCopyWithImpl<$Res, AvailableVehicle>;
  @useResult
  $Res call({String vehicleType, int capacity, Price price, bool isAvailable});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$AvailableVehicleCopyWithImpl<$Res, $Val extends AvailableVehicle>
    implements $AvailableVehicleCopyWith<$Res> {
  _$AvailableVehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
    Object? capacity = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvailableVehicleImplCopyWith<$Res>
    implements $AvailableVehicleCopyWith<$Res> {
  factory _$$AvailableVehicleImplCopyWith(_$AvailableVehicleImpl value,
          $Res Function(_$AvailableVehicleImpl) then) =
      __$$AvailableVehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String vehicleType, int capacity, Price price, bool isAvailable});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$AvailableVehicleImplCopyWithImpl<$Res>
    extends _$AvailableVehicleCopyWithImpl<$Res, _$AvailableVehicleImpl>
    implements _$$AvailableVehicleImplCopyWith<$Res> {
  __$$AvailableVehicleImplCopyWithImpl(_$AvailableVehicleImpl _value,
      $Res Function(_$AvailableVehicleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
    Object? capacity = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(_$AvailableVehicleImpl(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableVehicleImpl implements _AvailableVehicle {
  const _$AvailableVehicleImpl(
      {required this.vehicleType,
      required this.capacity,
      required this.price,
      this.isAvailable = false});

  factory _$AvailableVehicleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableVehicleImplFromJson(json);

  @override
  final String vehicleType;
  @override
  final int capacity;
  @override
  final Price price;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'AvailableVehicle(vehicleType: $vehicleType, capacity: $capacity, price: $price, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableVehicleImpl &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, vehicleType, capacity, price, isAvailable);

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableVehicleImplCopyWith<_$AvailableVehicleImpl> get copyWith =>
      __$$AvailableVehicleImplCopyWithImpl<_$AvailableVehicleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableVehicleImplToJson(
      this,
    );
  }
}

abstract class _AvailableVehicle implements AvailableVehicle {
  const factory _AvailableVehicle(
      {required final String vehicleType,
      required final int capacity,
      required final Price price,
      final bool isAvailable}) = _$AvailableVehicleImpl;

  factory _AvailableVehicle.fromJson(Map<String, dynamic> json) =
      _$AvailableVehicleImpl.fromJson;

  @override
  String get vehicleType;
  @override
  int get capacity;
  @override
  Price get price;
  @override
  bool get isAvailable;

  /// Create a copy of AvailableVehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableVehicleImplCopyWith<_$AvailableVehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String name,
      String category,
      Price price,
      bool isAvailable,
      int? quantity,
      String? description});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? quantity = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String category,
      Price price,
      bool isAvailable,
      int? quantity,
      String? description});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? quantity = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.name,
      required this.category,
      required this.price,
      this.isAvailable = false,
      this.quantity,
      this.description});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String name;
  @override
  final String category;
  @override
  final Price price;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final int? quantity;
  @override
  final String? description;

  @override
  String toString() {
    return 'Product(name: $name, category: $category, price: $price, isAvailable: $isAvailable, quantity: $quantity, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, category, price, isAvailable, quantity, description);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String name,
      required final String category,
      required final Price price,
      final bool isAvailable,
      final int? quantity,
      final String? description}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  Price get price;
  @override
  bool get isAvailable;
  @override
  int? get quantity;
  @override
  String? get description;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtype _$SubtypeFromJson(Map<String, dynamic> json) {
  return _Subtype.fromJson(json);
}

/// @nodoc
mixin _$Subtype {
  String get name => throw _privateConstructorUsedError;
  List<String> get facilities => throw _privateConstructorUsedError;
  Map<String, Plan> get plans => throw _privateConstructorUsedError;
  List<Discount> get discounts => throw _privateConstructorUsedError;

  /// Serializes this Subtype to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subtype
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubtypeCopyWith<Subtype> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtypeCopyWith<$Res> {
  factory $SubtypeCopyWith(Subtype value, $Res Function(Subtype) then) =
      _$SubtypeCopyWithImpl<$Res, Subtype>;
  @useResult
  $Res call(
      {String name,
      List<String> facilities,
      Map<String, Plan> plans,
      List<Discount> discounts});
}

/// @nodoc
class _$SubtypeCopyWithImpl<$Res, $Val extends Subtype>
    implements $SubtypeCopyWith<$Res> {
  _$SubtypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subtype
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? facilities = null,
    Object? plans = null,
    Object? discounts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      plans: null == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Map<String, Plan>,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<Discount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtypeImplCopyWith<$Res> implements $SubtypeCopyWith<$Res> {
  factory _$$SubtypeImplCopyWith(
          _$SubtypeImpl value, $Res Function(_$SubtypeImpl) then) =
      __$$SubtypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> facilities,
      Map<String, Plan> plans,
      List<Discount> discounts});
}

/// @nodoc
class __$$SubtypeImplCopyWithImpl<$Res>
    extends _$SubtypeCopyWithImpl<$Res, _$SubtypeImpl>
    implements _$$SubtypeImplCopyWith<$Res> {
  __$$SubtypeImplCopyWithImpl(
      _$SubtypeImpl _value, $Res Function(_$SubtypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subtype
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? facilities = null,
    Object? plans = null,
    Object? discounts = null,
  }) {
    return _then(_$SubtypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      plans: null == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Map<String, Plan>,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<Discount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtypeImpl implements _Subtype {
  const _$SubtypeImpl(
      {required this.name,
      required final List<String> facilities,
      required final Map<String, Plan> plans,
      required final List<Discount> discounts})
      : _facilities = facilities,
        _plans = plans,
        _discounts = discounts;

  factory _$SubtypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtypeImplFromJson(json);

  @override
  final String name;
  final List<String> _facilities;
  @override
  List<String> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  final Map<String, Plan> _plans;
  @override
  Map<String, Plan> get plans {
    if (_plans is EqualUnmodifiableMapView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_plans);
  }

  final List<Discount> _discounts;
  @override
  List<Discount> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'Subtype(name: $name, facilities: $facilities, plans: $plans, discounts: $discounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality().equals(other._plans, _plans) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_facilities),
      const DeepCollectionEquality().hash(_plans),
      const DeepCollectionEquality().hash(_discounts));

  /// Create a copy of Subtype
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtypeImplCopyWith<_$SubtypeImpl> get copyWith =>
      __$$SubtypeImplCopyWithImpl<_$SubtypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtypeImplToJson(
      this,
    );
  }
}

abstract class _Subtype implements Subtype {
  const factory _Subtype(
      {required final String name,
      required final List<String> facilities,
      required final Map<String, Plan> plans,
      required final List<Discount> discounts}) = _$SubtypeImpl;

  factory _Subtype.fromJson(Map<String, dynamic> json) = _$SubtypeImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get facilities;
  @override
  Map<String, Plan> get plans;
  @override
  List<Discount> get discounts;

  /// Create a copy of Subtype
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubtypeImplCopyWith<_$SubtypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get name => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call({String name, Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$ServiceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl implements _Service {
  const _$ServiceImpl({required this.name, required this.price});

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  final String name;
  @override
  final Price price;

  @override
  String toString() {
    return 'Service(name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {required final String name, required final Price price}) = _$ServiceImpl;

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  String get name;
  @override
  Price get price;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get beds => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  List<String> get imagesUrl => throw _privateConstructorUsedError;
  List<Amenity> get amenities => throw _privateConstructorUsedError;

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {String name,
      String type,
      int beds,
      double size,
      String? description,
      int capacity,
      double price,
      bool isAvailable,
      List<String> imagesUrl,
      List<Amenity> amenities});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? beds = null,
    Object? size = null,
    Object? description = freezed,
    Object? capacity = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? imagesUrl = null,
    Object? amenities = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      beds: null == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesUrl: null == imagesUrl
          ? _value.imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      int beds,
      double size,
      String? description,
      int capacity,
      double price,
      bool isAvailable,
      List<String> imagesUrl,
      List<Amenity> amenities});
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? beds = null,
    Object? size = null,
    Object? description = freezed,
    Object? capacity = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? imagesUrl = null,
    Object? amenities = null,
  }) {
    return _then(_$RoomImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      beds: null == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesUrl: null == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenities: null == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImpl implements _Room {
  const _$RoomImpl(
      {required this.name,
      required this.type,
      required this.beds,
      required this.size,
      this.description,
      required this.capacity,
      required this.price,
      required this.isAvailable,
      required final List<String> imagesUrl,
      required final List<Amenity> amenities})
      : _imagesUrl = imagesUrl,
        _amenities = amenities;

  factory _$RoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final int beds;
  @override
  final double size;
  @override
  final String? description;
  @override
  final int capacity;
  @override
  final double price;
  @override
  final bool isAvailable;
  final List<String> _imagesUrl;
  @override
  List<String> get imagesUrl {
    if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesUrl);
  }

  final List<Amenity> _amenities;
  @override
  List<Amenity> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  String toString() {
    return 'Room(name: $name, type: $type, beds: $beds, size: $size, description: $description, capacity: $capacity, price: $price, isAvailable: $isAvailable, imagesUrl: $imagesUrl, amenities: $amenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      beds,
      size,
      description,
      capacity,
      price,
      isAvailable,
      const DeepCollectionEquality().hash(_imagesUrl),
      const DeepCollectionEquality().hash(_amenities));

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImplToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {required final String name,
      required final String type,
      required final int beds,
      required final double size,
      final String? description,
      required final int capacity,
      required final double price,
      required final bool isAvailable,
      required final List<String> imagesUrl,
      required final List<Amenity> amenities}) = _$RoomImpl;

  factory _Room.fromJson(Map<String, dynamic> json) = _$RoomImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  int get beds;
  @override
  double get size;
  @override
  String? get description;
  @override
  int get capacity;
  @override
  double get price;
  @override
  bool get isAvailable;
  @override
  List<String> get imagesUrl;
  @override
  List<Amenity> get amenities;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  double get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Plan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call({double price, String? description});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, String? description});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? description = freezed,
  }) {
    return _then(_$PlanImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanImpl implements _Plan {
  const _$PlanImpl({required this.price, this.description});

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  final double price;
  @override
  final String? description;

  @override
  String toString() {
    return 'Plan(price: $price, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, description);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {required final double price, final String? description}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  double get price;
  @override
  String? get description;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DynamicPricing _$DynamicPricingFromJson(Map<String, dynamic> json) {
  return _DynamicPricing.fromJson(json);
}

/// @nodoc
mixin _$DynamicPricing {
  String get unit => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  /// Serializes this DynamicPricing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicPricing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicPricingCopyWith<DynamicPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicPricingCopyWith<$Res> {
  factory $DynamicPricingCopyWith(
          DynamicPricing value, $Res Function(DynamicPricing) then) =
      _$DynamicPricingCopyWithImpl<$Res, DynamicPricing>;
  @useResult
  $Res call({String unit, double rate});
}

/// @nodoc
class _$DynamicPricingCopyWithImpl<$Res, $Val extends DynamicPricing>
    implements $DynamicPricingCopyWith<$Res> {
  _$DynamicPricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicPricing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicPricingImplCopyWith<$Res>
    implements $DynamicPricingCopyWith<$Res> {
  factory _$$DynamicPricingImplCopyWith(_$DynamicPricingImpl value,
          $Res Function(_$DynamicPricingImpl) then) =
      __$$DynamicPricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String unit, double rate});
}

/// @nodoc
class __$$DynamicPricingImplCopyWithImpl<$Res>
    extends _$DynamicPricingCopyWithImpl<$Res, _$DynamicPricingImpl>
    implements _$$DynamicPricingImplCopyWith<$Res> {
  __$$DynamicPricingImplCopyWithImpl(
      _$DynamicPricingImpl _value, $Res Function(_$DynamicPricingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicPricing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? rate = null,
  }) {
    return _then(_$DynamicPricingImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicPricingImpl implements _DynamicPricing {
  const _$DynamicPricingImpl({required this.unit, required this.rate});

  factory _$DynamicPricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicPricingImplFromJson(json);

  @override
  final String unit;
  @override
  final double rate;

  @override
  String toString() {
    return 'DynamicPricing(unit: $unit, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicPricingImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unit, rate);

  /// Create a copy of DynamicPricing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicPricingImplCopyWith<_$DynamicPricingImpl> get copyWith =>
      __$$DynamicPricingImplCopyWithImpl<_$DynamicPricingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicPricingImplToJson(
      this,
    );
  }
}

abstract class _DynamicPricing implements DynamicPricing {
  const factory _DynamicPricing(
      {required final String unit,
      required final double rate}) = _$DynamicPricingImpl;

  factory _DynamicPricing.fromJson(Map<String, dynamic> json) =
      _$DynamicPricingImpl.fromJson;

  @override
  String get unit;
  @override
  double get rate;

  /// Create a copy of DynamicPricing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicPricingImplCopyWith<_$DynamicPricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
