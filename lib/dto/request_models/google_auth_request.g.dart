// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoogleAuthRequest _$GoogleAuthRequestFromJson(Map<String, dynamic> json) =>
    _GoogleAuthRequest(
      idToken: json['id_token'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$GoogleAuthRequestToJson(_GoogleAuthRequest instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
