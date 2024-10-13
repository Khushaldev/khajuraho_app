import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel_model.g.dart';

Hotel get hotelData => Hotel.fromJson(hotels[0]);

@JsonSerializable()
class Hotel extends Equatable {
  const Hotel({
    required this.title,
    required this.images,
    required this.location,
    required this.rating,
    required this.price,
    required this.description,
  });

  final String title;
  static const String titleKey = 'title';

  final List<String>? images;
  static const String imagesKey = 'images';

  final Location? location;
  static const String locationKey = 'location';

  final Rating? rating;
  static const String ratingKey = 'rating';

  final Price? price;
  static const String priceKey = 'price';

  final Description? description;
  static const String descriptionKey = 'description';

  Hotel copyWith({
    String? title,
    List<String>? images,
    Location? location,
    Rating? rating,
    Price? price,
    Description? description,
  }) {
    return Hotel(
      title: title ?? this.title,
      images: images ?? this.images,
      location: location ?? this.location,
      rating: rating ?? this.rating,
      price: price ?? this.price,
      description: description ?? this.description,
    );
  }

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelToJson(this);

  @override
  String toString() {
    return '$title, $images, $location, $rating, $price, $description, ';
  }

  @override
  List<Object?> get props => [
        title,
        images,
        location,
        rating,
        price,
        description,
      ];
}

@JsonSerializable()
class Description extends Equatable {
  const Description({
    required this.coupleFriendly,
    required this.breakfastIncluded,
    required this.mobileNo,
    required this.drivers,
  });

  @JsonKey(name: 'couple_friendly')
  final bool coupleFriendly;
  static const String coupleFriendlyKey = 'couple_friendly';

  @JsonKey(name: 'breakfast_included')
  final bool breakfastIncluded;
  static const String breakfastIncludedKey = 'breakfast_included';

  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  static const String mobileNoKey = 'mobile_no';

  final List<Driver>? drivers;
  static const String driversKey = 'drivers';

  Description copyWith({
    bool? coupleFriendly,
    bool? breakfastIncluded,
    String? mobileNo,
    List<Driver>? drivers,
  }) {
    return Description(
      coupleFriendly: coupleFriendly ?? this.coupleFriendly,
      breakfastIncluded: breakfastIncluded ?? this.breakfastIncluded,
      mobileNo: mobileNo ?? this.mobileNo,
      drivers: drivers ?? this.drivers,
    );
  }

  factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

  @override
  String toString() {
    return '$coupleFriendly, $breakfastIncluded, $mobileNo, $drivers, ';
  }

  @override
  List<Object?> get props => [
        coupleFriendly,
        breakfastIncluded,
        mobileNo,
        drivers,
      ];
}

@JsonSerializable()
class Driver extends Equatable {
  const Driver({
    required this.name,
    required this.mobileNo,
  });

  final String name;
  static const String nameKey = 'name';

  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  static const String mobileNoKey = 'mobile_no';

  Driver copyWith({
    String? name,
    String? mobileNo,
  }) {
    return Driver(
      name: name ?? this.name,
      mobileNo: mobileNo ?? this.mobileNo,
    );
  }

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);

  @override
  String toString() {
    return '$name, $mobileNo, ';
  }

  @override
  List<Object?> get props => [
        name,
        mobileNo,
      ];
}

@JsonSerializable()
class Location extends Equatable {
  const Location({
    required this.locality,
    required this.state,
    required this.country,
    required this.nearby,
  });

  final String locality;
  static const String localityKey = 'locality';

  final String state;
  static const String stateKey = 'state';

  final String country;
  static const String countryKey = 'country';

  final String nearby;
  static const String nearbyKey = 'nearby';

  Location copyWith({
    String? locality,
    String? state,
    String? country,
    String? nearby,
  }) {
    return Location(
      locality: locality ?? this.locality,
      state: state ?? this.state,
      country: country ?? this.country,
      nearby: nearby ?? this.nearby,
    );
  }

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() {
    return '$locality, $state, $country, $nearby, ';
  }

  @override
  List<Object?> get props => [
        locality,
        state,
        country,
        nearby,
      ];
}

@JsonSerializable()
class Price extends Equatable {
  const Price({
    required this.tax,
    required this.discountPrice,
    required this.price,
    required this.deals,
  });

  final int tax;
  static const String taxKey = 'tax';

  @JsonKey(name: 'discount_price')
  final double discountPrice;
  static const String discountPriceKey = 'discount_price';

  final double price;
  static const String priceKey = 'price';

  final Deals? deals;
  static const String dealsKey = 'deals';

  Price copyWith({
    int? tax,
    double? discountPrice,
    double? price,
    Deals? deals,
  }) {
    return Price(
      tax: tax ?? this.tax,
      discountPrice: discountPrice ?? this.discountPrice,
      price: price ?? this.price,
      deals: deals ?? this.deals,
    );
  }

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);

  @override
  String toString() {
    return '$tax, $discountPrice, $price, $deals, ';
  }

  @override
  List<Object?> get props => [
        tax,
        discountPrice,
        price,
        deals,
      ];
}

@JsonSerializable()
class Deals extends Equatable {
  const Deals({
    required this.dealPrice,
    required this.timeLeft,
  });

  @JsonKey(name: 'deal_price')
  final double dealPrice;
  static const String dealPriceKey = 'deal_price';

  @JsonKey(name: 'time_left')
  final int timeLeft;
  static const String timeLeftKey = 'time_left';

  Deals copyWith({
    double? dealPrice,
    int? timeLeft,
  }) {
    return Deals(
      dealPrice: dealPrice ?? this.dealPrice,
      timeLeft: timeLeft ?? this.timeLeft,
    );
  }

  factory Deals.fromJson(Map<String, dynamic> json) => _$DealsFromJson(json);

  Map<String, dynamic> toJson() => _$DealsToJson(this);

  @override
  String toString() {
    return '$dealPrice, $timeLeft, ';
  }

  @override
  List<Object?> get props => [
        dealPrice,
        timeLeft,
      ];
}

@JsonSerializable()
class Rating extends Equatable {
  const Rating({
    required this.stars,
    required this.totalLiked,
    required this.status,
    required this.color,
  });

  final int stars;
  static const String starsKey = 'stars';

  @JsonKey(name: 'total_liked')
  final int totalLiked;
  static const String totalLikedKey = 'total_liked';

  final String status;
  static const String statusKey = 'status';

  final String color;
  static const String colorKey = 'color';

  Rating copyWith({
    int? stars,
    int? totalLiked,
    String? status,
    String? color,
  }) {
    return Rating(
      stars: stars ?? this.stars,
      totalLiked: totalLiked ?? this.totalLiked,
      status: status ?? this.status,
      color: color ?? this.color,
    );
  }

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);

  @override
  String toString() {
    return '$stars, $totalLiked, $status, $color, ';
  }

  @override
  List<Object?> get props => [
        stars,
        totalLiked,
        status,
        color,
      ];
}

final hotels = [
  {
    'title': 'Taj Fort Aguada Resort & Spa, Goa',
    'images': [
      'https://r1imghtlak.mmtcdn.com/1611f3b6237111e89e9c0a4cef95d023.jpg',
      'https://r1imghtlak.mmtcdn.com/bfa4435ecf4c11eb80b60242ac110009.jpg',
      'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/room-imgs/200706181440296181-18922-7135c522ae9b11e9ac290242ac110002.jpg'
    ],
    'location': {
      'locality': 'Candolim',
      'state': 'Goa',
      'country': 'India',
      'nearby': 'Xz Hospital',
    },
    'rating': {
      'stars': 3,
      'total_liked': 450,
      'status': 'Excellent',
      'color': '',
    },
    'price': {
      'tax': 399,
      'discount_price': 2000,
      'price': 20000,
      'deals': {'deal_price': 16000, 'time_left': 4}
    },
    'description': {
      'couple_friendly': true,
      'breakfast_included': true,
      'mobile_no': '9717363674',
      'drivers': [
        {
          'name': 'Dhruv Taxi Service',
          'mobile_no': '9898989898',
        }
      ]
    }
  }
];
