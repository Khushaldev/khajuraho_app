// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxonomyItemImpl _$$TaxonomyItemImplFromJson(Map<String, dynamic> json) =>
    _$TaxonomyItemImpl(
      itemId: json['itemId'] as String,
      taxonomyId: json['taxonomyId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      contactInfo:
          ContactInfo.fromJson(json['contactInfo'] as Map<String, dynamic>),
      location: LocationInfo.fromJson(json['location'] as Map<String, dynamic>),
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      images: Images.fromJson(json['images'] as Map<String, dynamic>),
      otherAttributes: OtherAttributes.fromJson(
          json['otherAttributes'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaxonomyItemImplToJson(_$TaxonomyItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'taxonomyId': instance.taxonomyId,
      'name': instance.name,
      'description': instance.description,
      'contactInfo': instance.contactInfo.toJson(),
      'location': instance.location.toJson(),
      'attributes': instance.attributes.toJson(),
      'images': instance.images.toJson(),
      'otherAttributes': instance.otherAttributes.toJson(),
      'meta': instance.meta.toJson(),
      'status': instance.status.toJson(),
    };

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      email: json['email'] as String?,
      website: json['website'] as String?,
      countryCode: json['countryCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('website', instance.website);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  return val;
}

_$LocationInfoImpl _$$LocationInfoImplFromJson(Map<String, dynamic> json) =>
    _$LocationInfoImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      locality: json['locality'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      zipCode: json['zipCode'] as String?,
      nearbyLandmarks: (json['nearbyLandmarks'] as List<dynamic>?)
              ?.map((e) => NearbyLandmark.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NearbyLandmark>[],
    );

Map<String, dynamic> _$$LocationInfoImplToJson(_$LocationInfoImpl instance) {
  final val = <String, dynamic>{
    'latitude': instance.latitude,
    'longitude': instance.longitude,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locality', instance.locality);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('zipCode', instance.zipCode);
  val['nearbyLandmarks'] =
      instance.nearbyLandmarks.map((e) => e.toJson()).toList();
  return val;
}

_$NearbyLandmarkImpl _$$NearbyLandmarkImplFromJson(Map<String, dynamic> json) =>
    _$NearbyLandmarkImpl(
      nearby: (json['nearby'] as List<dynamic>?)
          ?.map((e) => Landmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      metro: (json['metro'] as List<dynamic>?)
          ?.map((e) => Landmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      airport: (json['airport'] as List<dynamic>?)
          ?.map((e) => Landmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      busStand: (json['busStand'] as List<dynamic>?)
          ?.map((e) => Landmark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NearbyLandmarkImplToJson(
    _$NearbyLandmarkImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nearby', instance.nearby?.map((e) => e.toJson()).toList());
  writeNotNull('metro', instance.metro?.map((e) => e.toJson()).toList());
  writeNotNull('airport', instance.airport?.map((e) => e.toJson()).toList());
  writeNotNull('busStand', instance.busStand?.map((e) => e.toJson()).toList());
  return val;
}

_$LandmarkImpl _$$LandmarkImplFromJson(Map<String, dynamic> json) =>
    _$LandmarkImpl(
      name: json['name'] as String,
      distance: (json['distance'] as num).toDouble(),
      location: LocationInfo.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LandmarkImplToJson(_$LandmarkImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'distance': instance.distance,
      'location': instance.location.toJson(),
    };

_$OpeningHoursImpl _$$OpeningHoursImplFromJson(Map<String, dynamic> json) =>
    _$OpeningHoursImpl(
      open: json['open'] as bool? ?? false,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      notice: json['notice'] as String?,
    );

Map<String, dynamic> _$$OpeningHoursImplToJson(_$OpeningHoursImpl instance) {
  final val = <String, dynamic>{
    'open': instance.open,
    'startTime': instance.startTime,
    'endTime': instance.endTime,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notice', instance.notice);
  return val;
}

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      hotels: json['hotels'] == null
          ? null
          : HotelAttributes.fromJson(json['hotels'] as Map<String, dynamic>),
      dineOut: json['dineOut'] == null
          ? null
          : DineOutAttributes.fromJson(json['dineOut'] as Map<String, dynamic>),
      cabs: json['cabs'] == null
          ? null
          : CabAttributes.fromJson(json['cabs'] as Map<String, dynamic>),
      grocery: json['grocery'] == null
          ? null
          : GroceryAttributes.fromJson(json['grocery'] as Map<String, dynamic>),
      fitness: json['fitness'] == null
          ? null
          : FitnessAttributes.fromJson(json['fitness'] as Map<String, dynamic>),
      beauty: json['beauty'] == null
          ? null
          : BeautyAttributes.fromJson(json['beauty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hotels', instance.hotels?.toJson());
  writeNotNull('dineOut', instance.dineOut?.toJson());
  writeNotNull('cabs', instance.cabs?.toJson());
  writeNotNull('grocery', instance.grocery?.toJson());
  writeNotNull('fitness', instance.fitness?.toJson());
  writeNotNull('beauty', instance.beauty?.toJson());
  return val;
}

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      thumbnail: json['thumbnail'] as String,
      gallery: ImageGallery.fromJson(json['gallery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'gallery': instance.gallery.toJson(),
    };

_$ImageGalleryImpl _$$ImageGalleryImplFromJson(Map<String, dynamic> json) =>
    _$ImageGalleryImpl(
      original: (json['original'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      low: (json['low'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      medium: (json['medium'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      high:
          (json['high'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$ImageGalleryImplToJson(_$ImageGalleryImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'low': instance.low,
      'medium': instance.medium,
      'high': instance.high,
    };

_$OtherAttributesImpl _$$OtherAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherAttributesImpl(
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      bookingInfo: json['bookingInfo'] == null
          ? null
          : BookingInfo.fromJson(json['bookingInfo'] as Map<String, dynamic>),
      openingHours: (json['openingHours'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, OpeningHours.fromJson(e as Map<String, dynamic>)),
      ),
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <String>[],
      promotions: (json['promotions'] as List<dynamic>?)
              ?.map((e) => Promotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Promotion>[],
    );

Map<String, dynamic> _$$OtherAttributesImplToJson(
    _$OtherAttributesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('bookingInfo', instance.bookingInfo?.toJson());
  writeNotNull('openingHours',
      instance.openingHours?.map((k, e) => MapEntry(k, e.toJson())));
  val['reviews'] = instance.reviews.map((e) => e.toJson()).toList();
  val['promotions'] = instance.promotions.map((e) => e.toJson()).toList();
  return val;
}

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      taxonomies: (json['taxonomies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      otherBranchIds: (json['otherBranchIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      locale: (json['locale'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'taxonomies': instance.taxonomies,
      'otherBranchIds': instance.otherBranchIds,
      'locale': instance.locale,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      isActive: json['isActive'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
    };

_$HotelAttributesImpl _$$HotelAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelAttributesImpl(
      rooms: RoomDetails.fromJson(json['rooms'] as Map<String, dynamic>),
      amenities: (json['amenities'] as List<dynamic>?)
              ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Amenity>[],
      facilities: (json['facilities'] as List<dynamic>?)
              ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Facility>[],
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Policy>[],
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelAttributesImplToJson(
        _$HotelAttributesImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms.toJson(),
      'amenities': instance.amenities.map((e) => e.toJson()).toList(),
      'facilities': instance.facilities.map((e) => e.toJson()).toList(),
      'policies': instance.policies.map((e) => e.toJson()).toList(),
      'price': instance.price.toJson(),
    };

_$DineOutAttributesImpl _$$DineOutAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$DineOutAttributesImpl(
      cuisines: (json['cuisines'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      menu: (json['menu'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MenuItem>[],
      dineOutType: json['dineOutType'] as String?,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DineOutAttributesImplToJson(
    _$DineOutAttributesImpl instance) {
  final val = <String, dynamic>{
    'cuisines': instance.cuisines,
    'menu': instance.menu.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dineOutType', instance.dineOutType);
  val['price'] = instance.price.toJson();
  return val;
}

_$CabAttributesImpl _$$CabAttributesImplFromJson(Map<String, dynamic> json) =>
    _$CabAttributesImpl(
      serviceType: json['serviceType'] as String?,
      availableVehicles: (json['availableVehicles'] as List<dynamic>?)
              ?.map((e) => AvailableVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AvailableVehicle>[],
    );

Map<String, dynamic> _$$CabAttributesImplToJson(_$CabAttributesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serviceType', instance.serviceType);
  val['availableVehicles'] =
      instance.availableVehicles.map((e) => e.toJson()).toList();
  return val;
}

_$GroceryAttributesImpl _$$GroceryAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$GroceryAttributesImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
      facilities: (json['facilities'] as List<dynamic>?)
              ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Facility>[],
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroceryAttributesImplToJson(
        _$GroceryAttributesImpl instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'facilities': instance.facilities.map((e) => e.toJson()).toList(),
      'price': instance.price.toJson(),
    };

_$FitnessAttributesImpl _$$FitnessAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$FitnessAttributesImpl(
      fitnessType: json['fitnessType'] as String?,
      subtypes: (json['subtypes'] as List<dynamic>?)
              ?.map((e) => Subtype.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Subtype>[],
      facilities: (json['facilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FitnessAttributesImplToJson(
    _$FitnessAttributesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fitnessType', instance.fitnessType);
  val['subtypes'] = instance.subtypes.map((e) => e.toJson()).toList();
  val['facilities'] = instance.facilities;
  val['price'] = instance.price.toJson();
  return val;
}

_$BeautyAttributesImpl _$$BeautyAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$BeautyAttributesImpl(
      beautySalonType: json['beautySalonType'] as String,
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Service>[],
      facilities: (json['facilities'] as List<dynamic>?)
              ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Facility>[],
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BeautyAttributesImplToJson(
        _$BeautyAttributesImpl instance) =>
    <String, dynamic>{
      'beautySalonType': instance.beautySalonType,
      'services': instance.services.map((e) => e.toJson()).toList(),
      'facilities': instance.facilities.map((e) => e.toJson()).toList(),
      'price': instance.price.toJson(),
    };

_$RoomDetailsImpl _$$RoomDetailsImplFromJson(Map<String, dynamic> json) =>
    _$RoomDetailsImpl(
      total: (json['total'] as num).toInt(),
      available: (json['available'] as num).toInt(),
      details: (json['details'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomDetailsImplToJson(_$RoomDetailsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'available': instance.available,
      'details': instance.details.map((e) => e.toJson()).toList(),
    };

_$AmenityImpl _$$AmenityImplFromJson(Map<String, dynamic> json) =>
    _$AmenityImpl(
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AmenityImplToJson(_$AmenityImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('iconUrl', instance.iconUrl);
  writeNotNull('description', instance.description);
  return val;
}

_$FacilityImpl _$$FacilityImplFromJson(Map<String, dynamic> json) =>
    _$FacilityImpl(
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$FacilityImplToJson(_$FacilityImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('iconUrl', instance.iconUrl);
  writeNotNull('description', instance.description);
  return val;
}

_$PolicyImpl _$$PolicyImplFromJson(Map<String, dynamic> json) => _$PolicyImpl(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PolicyImplToJson(_$PolicyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      currency: json['currency'] as String,
      type: json['type'] as String,
      amount: (json['amount'] as num?)?.toDouble(),
      range: json['range'] == null
          ? null
          : PriceRange.fromJson(json['range'] as Map<String, dynamic>),
      discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => Discount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Discount>[],
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) {
  final val = <String, dynamic>{
    'currency': instance.currency,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('range', instance.range?.toJson());
  val['discounts'] = instance.discounts.map((e) => e.toJson()).toList();
  return val;
}

_$PriceRangeImpl _$$PriceRangeImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeImpl(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$$PriceRangeImplToJson(_$PriceRangeImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$DiscountImpl _$$DiscountImplFromJson(Map<String, dynamic> json) =>
    _$DiscountImpl(
      percentage: (json['percentage'] as num?)?.toDouble(),
      discountedPrice: (json['discountedPrice'] as num?)?.toDouble(),
      description: json['description'] as String?,
      validFrom: json['validFrom'] as String?,
      validUntil: json['validUntil'] as String?,
      conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('percentage', instance.percentage);
  writeNotNull('discountedPrice', instance.discountedPrice);
  writeNotNull('description', instance.description);
  writeNotNull('validFrom', instance.validFrom);
  writeNotNull('validUntil', instance.validUntil);
  val['conditions'] = instance.conditions;
  val['isActive'] = instance.isActive;
  return val;
}

_$RatingsImpl _$$RatingsImplFromJson(Map<String, dynamic> json) =>
    _$RatingsImpl(
      averageRating: (json['averageRating'] as num).toDouble(),
      totalRatings: (json['totalRatings'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingsImplToJson(_$RatingsImpl instance) =>
    <String, dynamic>{
      'averageRating': instance.averageRating,
      'totalRatings': instance.totalRatings,
    };

_$RatingBreakdownImpl _$$RatingBreakdownImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingBreakdownImpl(
      fiveStar: (json['fiveStar'] as num).toInt(),
      fourStar: (json['fourStar'] as num).toInt(),
      threeStar: (json['threeStar'] as num).toInt(),
      twoStar: (json['twoStar'] as num).toInt(),
      oneStar: (json['oneStar'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingBreakdownImplToJson(
        _$RatingBreakdownImpl instance) =>
    <String, dynamic>{
      'fiveStar': instance.fiveStar,
      'fourStar': instance.fourStar,
      'threeStar': instance.threeStar,
      'twoStar': instance.twoStar,
      'oneStar': instance.oneStar,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      reviewId: json['reviewId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) {
  final val = <String, dynamic>{
    'reviewId': instance.reviewId,
    'userId': instance.userId,
    'userName': instance.userName,
    'rating': instance.rating,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  val['createdAt'] = instance.createdAt;
  return val;
}

_$BookingInfoImpl _$$BookingInfoImplFromJson(Map<String, dynamic> json) =>
    _$BookingInfoImpl(
      isBookable: json['isBookable'] as bool? ?? false,
      bookingUrl: json['bookingUrl'] as String?,
      bookingContact: json['bookingContact'] as String?,
    );

Map<String, dynamic> _$$BookingInfoImplToJson(_$BookingInfoImpl instance) {
  final val = <String, dynamic>{
    'isBookable': instance.isBookable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bookingUrl', instance.bookingUrl);
  writeNotNull('bookingContact', instance.bookingContact);
  return val;
}

_$PromotionImpl _$$PromotionImplFromJson(Map<String, dynamic> json) =>
    _$PromotionImpl(
      promoId: json['promoId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$PromotionImplToJson(_$PromotionImpl instance) =>
    <String, dynamic>{
      'promoId': instance.promoId,
      'name': instance.name,
      'description': instance.description,
      'discountPercentage': instance.discountPercentage,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isActive': instance.isActive,
    };

_$MenuItemImpl _$$MenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemImpl(
      name: json['name'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? false,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MenuItemImplToJson(_$MenuItemImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'category': instance.category,
    'price': instance.price,
    'isAvailable': instance.isAvailable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}

_$AvailableVehicleImpl _$$AvailableVehicleImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableVehicleImpl(
      vehicleType: json['vehicleType'] as String,
      capacity: (json['capacity'] as num).toInt(),
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      isAvailable: json['isAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$$AvailableVehicleImplToJson(
        _$AvailableVehicleImpl instance) =>
    <String, dynamic>{
      'vehicleType': instance.vehicleType,
      'capacity': instance.capacity,
      'price': instance.price.toJson(),
      'isAvailable': instance.isAvailable,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String,
      category: json['category'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      isAvailable: json['isAvailable'] as bool? ?? false,
      quantity: (json['quantity'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'category': instance.category,
    'price': instance.price.toJson(),
    'isAvailable': instance.isAvailable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  writeNotNull('description', instance.description);
  return val;
}

_$SubtypeImpl _$$SubtypeImplFromJson(Map<String, dynamic> json) =>
    _$SubtypeImpl(
      name: json['name'] as String,
      facilities: (json['facilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      plans: (json['plans'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Plan.fromJson(e as Map<String, dynamic>)),
      ),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => Discount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubtypeImplToJson(_$SubtypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'facilities': instance.facilities,
      'plans': instance.plans.map((k, e) => MapEntry(k, e.toJson())),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
    };

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(
      name: json['name'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price.toJson(),
    };

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      beds: (json['beds'] as num).toInt(),
      size: (json['size'] as num).toDouble(),
      description: json['description'] as String?,
      capacity: (json['capacity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool,
      imagesUrl:
          (json['imagesUrl'] as List<dynamic>).map((e) => e as String).toList(),
      amenities: (json['amenities'] as List<dynamic>)
          .map((e) => Amenity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'type': instance.type,
    'beds': instance.beds,
    'size': instance.size,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['capacity'] = instance.capacity;
  val['price'] = instance.price;
  val['isAvailable'] = instance.isAvailable;
  val['imagesUrl'] = instance.imagesUrl;
  val['amenities'] = instance.amenities.map((e) => e.toJson()).toList();
  return val;
}

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) {
  final val = <String, dynamic>{
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}

_$DynamicPricingImpl _$$DynamicPricingImplFromJson(Map<String, dynamic> json) =>
    _$DynamicPricingImpl(
      unit: json['unit'] as String,
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$DynamicPricingImplToJson(
        _$DynamicPricingImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'rate': instance.rate,
    };
