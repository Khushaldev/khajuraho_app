import 'package:client_app/domain/user_profile.dart';

enum AuthType { google, apple }

abstract class AuthService {
  Future<String?> signInWithOAuth(AuthType type);

  Future<UserProfile> getUserProfile({bool forceUpdate = false});

  Future<void> signOut();
}
