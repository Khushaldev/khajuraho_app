// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String,
      displayName: json['display_name'] as String,
      email: json['email'] as String,
      profilePicture: json['profile_picture'] as String,
      countryCode: json['country_code'] as String,
      phoneNumber: json['phone_number'] as String,
      isActive: json['is_active'] as bool,
      isVerified: json['is_verified'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'country_code': instance.countryCode,
      'phone_number': instance.phoneNumber,
      'is_active': instance.isActive,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
