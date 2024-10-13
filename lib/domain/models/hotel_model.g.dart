// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotel _$HotelFromJson(Map<String, dynamic> json) => Hotel(
      title: json['title'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HotelToJson(Hotel instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images);
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('rating', instance.rating?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('description', instance.description?.toJson());
  return val;
}

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      coupleFriendly: json['couple_friendly'] as bool,
      breakfastIncluded: json['breakfast_included'] as bool,
      mobileNo: json['mobile_no'] as String,
      drivers: (json['drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) {
  final val = <String, dynamic>{
    'couple_friendly': instance.coupleFriendly,
    'breakfast_included': instance.breakfastIncluded,
    'mobile_no': instance.mobileNo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('drivers', instance.drivers?.map((e) => e.toJson()).toList());
  return val;
}

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      name: json['name'] as String,
      mobileNo: json['mobile_no'] as String,
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'name': instance.name,
      'mobile_no': instance.mobileNo,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      locality: json['locality'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      nearby: json['nearby'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'locality': instance.locality,
      'state': instance.state,
      'country': instance.country,
      'nearby': instance.nearby,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      tax: (json['tax'] as num).toInt(),
      discountPrice: (json['discount_price'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      deals: json['deals'] == null
          ? null
          : Deals.fromJson(json['deals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceToJson(Price instance) {
  final val = <String, dynamic>{
    'tax': instance.tax,
    'discount_price': instance.discountPrice,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deals', instance.deals?.toJson());
  return val;
}

Deals _$DealsFromJson(Map<String, dynamic> json) => Deals(
      dealPrice: (json['deal_price'] as num).toDouble(),
      timeLeft: (json['time_left'] as num).toInt(),
    );

Map<String, dynamic> _$DealsToJson(Deals instance) => <String, dynamic>{
      'deal_price': instance.dealPrice,
      'time_left': instance.timeLeft,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      stars: (json['stars'] as num).toInt(),
      totalLiked: (json['total_liked'] as num).toInt(),
      status: json['status'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'stars': instance.stars,
      'total_liked': instance.totalLiked,
      'status': instance.status,
      'color': instance.color,
    };
