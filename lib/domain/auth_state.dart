import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_profile.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(UserProfile userProfile) = Authenticated;
  const factory AuthState.unauthenticated(dynamic error) = Unauthenticated;
  const factory AuthState.initial() = _Initial;
}
