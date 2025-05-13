// ID             uuid.UUID `gorm:"type:uuid;primaryKey" json:"id"`
// 	DisplayName    string    `gorm:"not null" json:"display_name"`
// 	Email          string    `gorm:"uniqueIndex;not null" json:"email"`
// 	ProfilePicture string    `gorm:"default:''" json:"profile_picture"`
// 	CountryCode    string    `gorm:"default:''" json:"country_code"`
// 	PhoneNumber    string    `gorm:"default:''" json:"phone_number"`
// 	IsActive       bool      `gorm:"default:true" json:"is_active"`
// 	IsVerified     bool      `gorm:"default:false" json:"is_verified"`
// 	CreatedAt      time.Time `gorm:"autoCreateTime" json:"created_at"`
// 	UpdatedAt      time.Time `gorm:"autoUpdateTime" json:"updated_at"`

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const User._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    required String id,
    required String displayName,
    required String email,
    required String profilePicture,
    required String countryCode,
    required String phoneNumber,
    required bool isActive,
    required bool isVerified,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
