// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoogleAuthResponse _$GoogleAuthResponseFromJson(Map<String, dynamic> json) =>
    _GoogleAuthResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: GoogleAuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleAuthResponseToJson(_GoogleAuthResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_GoogleAuthData _$GoogleAuthDataFromJson(Map<String, dynamic> json) =>
    _GoogleAuthData(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tokens: AuthTokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleAuthDataToJson(_GoogleAuthData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };
