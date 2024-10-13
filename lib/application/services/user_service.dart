import '../../domain/user_profile.dart';
import '../firebase.dart';

class UserService {
  static Future<void> updateUserProfile(UserProfile userProfile) async {
    await FirestoreService.updateOne(
      'user_profile',
      userProfile.id,
      userProfile.toJson(),
    );
  }
}
