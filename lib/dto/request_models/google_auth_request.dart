import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_auth_request.freezed.dart';
part 'google_auth_request.g.dart';

@freezed
abstract class GoogleAuthRequest with _$GoogleAuthRequest {
  const GoogleAuthRequest._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GoogleAuthRequest({
    required String idToken,
    required double latitude,
    required double longitude,
  }) = _GoogleAuthRequest;

  factory GoogleAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthRequestFromJson(json);
}
