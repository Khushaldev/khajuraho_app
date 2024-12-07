import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxonomy_item.freezed.dart';
part 'taxonomy_item.g.dart';

@freezed
class TaxonomyItem with _$TaxonomyItem {
  const factory TaxonomyItem({
    required String itemId,
    required String taxonomyId,
    required String name,
    required String description,
    required ContactInfo contactInfo,
    required LocationInfo location,
    required Attributes attributes,
    required Images images,
    required OtherAttributes otherAttributes,
    required Meta meta,
    required Status status,
  }) = _TaxonomyItem;

  factory TaxonomyItem.fromJson(Map<String, dynamic> json) => _$TaxonomyItemFromJson(json);
}

@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    String? email,
    String? website,
    String? countryCode,
    String? phoneNumber,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);
}

@freezed
class LocationInfo with _$LocationInfo {
  const factory LocationInfo({
    required double latitude,
    required double longitude,
    String? locality,
    String? state,
    String? country,
    String? address,
    String? city,
    String? zipCode,
    @Default(<NearbyLandmark>[]) List<NearbyLandmark> nearbyLandmarks,
  }) = _LocationInfo;

  factory LocationInfo.fromJson(Map<String, dynamic> json) => _$LocationInfoFromJson(json);
}

@freezed
class NearbyLandmark with _$NearbyLandmark {
  const factory NearbyLandmark({
    List<Landmark>? nearby,
    List<Landmark>? metro,
    List<Landmark>? airport,
    List<Landmark>? busStand,
  }) = _NearbyLandmark;

  factory NearbyLandmark.fromJson(Map<String, dynamic> json) => _$NearbyLandmarkFromJson(json);
}

@freezed
class Landmark with _$Landmark {
  const factory Landmark({
    required String name,
    required double distance,
    required LocationInfo location,
  }) = _Landmark;

  factory Landmark.fromJson(Map<String, dynamic> json) => _$LandmarkFromJson(json);
}

@freezed
class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    @Default(false) bool open,
    required String startTime,
    required String endTime,
    String? notice,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    HotelAttributes? hotels,
    DineOutAttributes? dineOut,
    CabAttributes? cabs,
    GroceryAttributes? grocery,
    FitnessAttributes? fitness,
    BeautyAttributes? beauty,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    required String thumbnail,
    required ImageGallery gallery,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class ImageGallery with _$ImageGallery {
  const factory ImageGallery({
    @Default(<String>[]) List<String> original,
    @Default(<String>[]) List<String> low,
    @Default(<String>[]) List<String> medium,
    @Default(<String>[]) List<String> high,
  }) = _ImageGallery;

  factory ImageGallery.fromJson(Map<String, dynamic> json) => _$ImageGalleryFromJson(json);
}

@freezed
class OtherAttributes with _$OtherAttributes {
  const factory OtherAttributes({
    Ratings? ratings,
    BookingInfo? bookingInfo,
    Map<String, OpeningHours>? openingHours,
    @Default(<String>[]) List<Review> reviews,
    @Default(<Promotion>[]) List<Promotion> promotions,
  }) = _OtherAttributes;

  factory OtherAttributes.fromJson(Map<String, dynamic> json) => _$OtherAttributesFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @Default(<String>[]) List<String> taxonomies,
    @Default(<String>[]) List<String> otherBranchIds,
    @Default(<String>[]) List<String> locale,
    required String createdAt,
    required String updatedAt,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    @Default(false) bool isActive,
    @Default(false) bool isDeleted,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class HotelAttributes with _$HotelAttributes {
  const factory HotelAttributes({
    required RoomDetails rooms,
    @Default(<Amenity>[]) List<Amenity> amenities,
    @Default(<Facility>[]) List<Facility> facilities,
    @Default(<Policy>[]) List<Policy> policies,
    required Price price,
  }) = _HotelAttributes;

  factory HotelAttributes.fromJson(Map<String, dynamic> json) => _$HotelAttributesFromJson(json);
}

@freezed
class DineOutAttributes with _$DineOutAttributes {
  const factory DineOutAttributes({
    @Default(<String>[]) List<String> cuisines,
    @Default(<MenuItem>[]) List<MenuItem> menu,
    String? dineOutType, // TODO: Make it enum
    required Price price,
  }) = _DineOutAttributes;

  factory DineOutAttributes.fromJson(Map<String, dynamic> json) =>
      _$DineOutAttributesFromJson(json);
}

@freezed
class CabAttributes with _$CabAttributes {
  const factory CabAttributes({
    String? serviceType, // TODO: Make it enum
    @Default(<AvailableVehicle>[]) List<AvailableVehicle> availableVehicles,
  }) = _CabAttributes;

  factory CabAttributes.fromJson(Map<String, dynamic> json) => _$CabAttributesFromJson(json);
}

@freezed
class GroceryAttributes with _$GroceryAttributes {
  const factory GroceryAttributes({
    @Default(<Product>[]) List<Product> products,
    @Default(<Facility>[]) List<Facility> facilities,
    required Price price,
  }) = _GroceryAttributes;

  factory GroceryAttributes.fromJson(Map<String, dynamic> json) =>
      _$GroceryAttributesFromJson(json);
}

@freezed
class FitnessAttributes with _$FitnessAttributes {
  const factory FitnessAttributes({
    String? fitnessType, // TODO: Make it enum
    @Default(<Subtype>[]) List<Subtype> subtypes,
    @Default(<String>[]) List<String> facilities,
    required Price price,
  }) = _FitnessAttributes;

  factory FitnessAttributes.fromJson(Map<String, dynamic> json) =>
      _$FitnessAttributesFromJson(json);
}

@freezed
class BeautyAttributes with _$BeautyAttributes {
  const factory BeautyAttributes({
    required String beautySalonType, // TODO: Make it enum
    @Default(<Service>[]) List<Service> services,
    @Default(<Facility>[]) List<Facility> facilities,
    required Price price,
  }) = _BeautyAttributes;

  factory BeautyAttributes.fromJson(Map<String, dynamic> json) => _$BeautyAttributesFromJson(json);
}

@freezed
class RoomDetails with _$RoomDetails {
  const factory RoomDetails({
    required int total,
    required int available,
    required List<Room> details,
  }) = _RoomDetails;

  factory RoomDetails.fromJson(Map<String, dynamic> json) => _$RoomDetailsFromJson(json);
}

@freezed
class Amenity with _$Amenity {
  const factory Amenity({
    required String name,
    String? iconUrl,
    String? description,
  }) = _Amenity;

  factory Amenity.fromJson(Map<String, dynamic> json) => _$AmenityFromJson(json);
}

@freezed
class Facility with _$Facility {
  const factory Facility({
    required String name,
    String? iconUrl,
    String? description,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) => _$FacilityFromJson(json);
}

@freezed
class Policy with _$Policy {
  const factory Policy({
    required String name,
    required String description,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    required String currency,
    required String type,
    double? amount,
    PriceRange? range,
    @Default(<Discount>[]) List<Discount> discounts,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    required double min,
    required double max,
  }) = _PriceRange;

  factory PriceRange.fromJson(Map<String, dynamic> json) => _$PriceRangeFromJson(json);
}

@freezed
class Discount with _$Discount {
  const factory Discount({
    double? percentage,
    required double? discountedPrice,
    required String? description,
    required String? validFrom,
    required String? validUntil,
    @Default(<String>[]) List<String> conditions,
    @Default(false) bool isActive,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}

@freezed
class Ratings with _$Ratings {
  const factory Ratings({
    required double averageRating,
    required int totalRatings,
    // required RatingBreakdown ratingBreakdown,
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);
}

//TODO: improve RatingBreakdown model
@freezed
class RatingBreakdown with _$RatingBreakdown {
  const factory RatingBreakdown({
    required int fiveStar,
    required int fourStar,
    required int threeStar,
    required int twoStar,
    required int oneStar,
  }) = _RatingBreakdown;

  factory RatingBreakdown.fromJson(Map<String, dynamic> json) => _$RatingBreakdownFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String reviewId,
    required String userId,
    required String userName,
    required double rating,
    String? comment,
    required String createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class BookingInfo with _$BookingInfo {
  const factory BookingInfo({
    @Default(false) bool isBookable,
    String? bookingUrl,
    String? bookingContact,
  }) = _BookingInfo;

  factory BookingInfo.fromJson(Map<String, dynamic> json) => _$BookingInfoFromJson(json);
}

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required String promoId,
    required String name,
    required String description,
    required double discountPercentage,
    required String startDate,
    required String endDate,
    @Default(false) bool isActive,
  }) = _Promotion;

  factory Promotion.fromJson(Map<String, dynamic> json) => _$PromotionFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required String name,
    required String category,
    required double price,
    @Default(false) bool isAvailable,
    String? description,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);
}

@freezed
class AvailableVehicle with _$AvailableVehicle {
  const factory AvailableVehicle({
    required String vehicleType,
    required int capacity,
    required Price price,
    @Default(false) bool isAvailable,
  }) = _AvailableVehicle;

  factory AvailableVehicle.fromJson(Map<String, dynamic> json) => _$AvailableVehicleFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required String category,
    required Price price,
    @Default(false) bool isAvailable,
    int? quantity,
    String? description,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Subtype with _$Subtype {
  const factory Subtype({
    required String name,
    required List<String> facilities,
    required Map<String, Plan> plans,
    required List<Discount> discounts,
  }) = _Subtype;

  factory Subtype.fromJson(Map<String, dynamic> json) => _$SubtypeFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    required String name,
    required Price price,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

@freezed
class Room with _$Room {
  const factory Room({
    required String name,
    required String type,
    required int beds,
    required double size,
    String? description,
    required int capacity,
    required double price,
    required bool isAvailable,
    required List<String> imagesUrl,
    required List<Amenity> amenities,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@freezed
class Plan with _$Plan {
  const factory Plan({
    required double price,
    String? description,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}

@freezed
class DynamicPricing with _$DynamicPricing {
  const factory DynamicPricing({
    required String unit,
    required double rate,
  }) = _DynamicPricing;

  factory DynamicPricing.fromJson(Map<String, dynamic> json) => _$DynamicPricingFromJson(json);
}
