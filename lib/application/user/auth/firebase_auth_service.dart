import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../di/di_container.dart';
import '../../../domain/app_store/app_state.dart';
import '../../../domain/app_store/app_store.dart';
import '../../../domain/user_profile.dart';
import '../../../utils/helpers/log.dart';
import '../../firebase.dart';
import './auth_service.dart';

class FirebaseAuthService implements AuthService {
  final GoogleSignIn _googleSignIn = diContainer<GoogleSignIn>();
  final FirebaseAuth _firebaseAuth = diContainer<FirebaseAuth>();

  @override
  Future<String?> signInWithOAuth(AuthType type) async {
    if (type == AuthType.google) {
      final userId = await _signInWithGoogle();

      return userId;
    }

    return null;
  }

  Future<String?> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return null;
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final result = await _firebaseAuth.signInWithCredential(credential);

    return result.user?.uid;
  }

  @override
  Future<UserProfile> getUserProfile({bool forceUpdate = false}) async {
    final appStore = diContainer<AppStore>();
    UserProfile cachedProfile = appStore.appState.userProfile;

    // If not a visitor, fetch the latest user profile from Firestore
    if (forceUpdate) {
      if (cachedProfile.id != UserProfile.visitor.id) {
        try {
          // Read the latest user profile document from Firestore
          final DocumentSnapshot<Object?> doc = await FirestoreService.read(
            collectionName: 'user_profile',
            docId: cachedProfile.id,
          );

          // Ensure we have data, otherwise fallback to an empty map
          final userData = (doc.data() as Map<String, dynamic>?) ?? {};

          // Update the user profile from the fetched data
          final updatedProfile = UserProfile.fromJson(userData);

          // Only update the app state if the profile has changed
          if (updatedProfile != cachedProfile) {
            await appStore.setUserProfile(updatedProfile);
            cachedProfile = updatedProfile;
          }
        } catch (e, st) {
          // Handle any potential errors during Firestore read operation
          Log.trace('Error fetching user profile: $e', st);
          rethrow;
        }
      }
    }

    // Return the latest cached or updated user profile
    return cachedProfile;
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
    diContainer<AppStore>().appState = AppState.empty;
  }
}
