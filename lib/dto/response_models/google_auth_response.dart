import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/auth_tokens.dart';
import '../../models/user.dart';

part 'google_auth_response.freezed.dart';
part 'google_auth_response.g.dart';

@freezed
sealed class GoogleAuthResponse with _$GoogleAuthResponse {
  const GoogleAuthResponse._();

  const factory GoogleAuthResponse({
    required bool success,
    required String message,
    required GoogleAuthData data,
  }) = _GoogleAuthResponse;

  factory GoogleAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthResponseFromJson(json);
}

@freezed
sealed class GoogleAuthData with _$GoogleAuthData {
  const GoogleAuthData._();

  const factory GoogleAuthData({
    required User user,
    required AuthTokens tokens,
  }) = _GoogleAuthData;

  factory GoogleAuthData.fromJson(Map<String, dynamic> json) => _$GoogleAuthDataFromJson(json);
}
