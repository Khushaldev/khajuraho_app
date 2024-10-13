import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserProfile({
    required String id,
    String? firstName,
    String? lastName,
    @Default(false) bool isFirstTime,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) => //
      _$UserProfileFromJson(json);

  static UserProfile get visitor {
    return UserProfile(
      id: 'visitor',
    );
  }
}
