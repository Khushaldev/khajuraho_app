import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  // static Future<String?> fetchFcmToken() async {
  //   try {
  //     final NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
  //     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //       final String? token = await FirebaseMessaging.instance.getToken();
  //       return token;
  //     }
  //   } catch (_) {}

  //   return null;
  // }

  static Future<String?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final OAuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(authCredential);
      final user = userCredential.user;

      String? idToken;
      if (user != null) {
        final currentUser = _auth.currentUser;
        idToken = await currentUser?.getIdToken();
      }

      return idToken;
    } on PlatformException catch (e) {
      if (e.code == GoogleSignIn.kNetworkError) {
        throw FirebaseServiceException(
          code: AuthFailedType.networkIssue,
          errorMessage: 'Network issue. Please try again after some time',
          stackTrace: 'Failed ${e.toString()}',
        );
      } else if (e.code == GoogleSignIn.kSignInCanceledError) {
        throw FirebaseServiceException(
          code: AuthFailedType.userCanceled,
          errorMessage: 'User has canceled the google sign in',
          stackTrace: 'Failed ${e.toString()}',
        );
      } else {
        throw FirebaseServiceException(
          code: AuthFailedType.networkIssue,
          errorMessage: 'Sign in failed. Please try again after some time',
          stackTrace: 'Failed ${e.toString()}',
        );
      }
    } catch (e, st) {
      throw FirebaseServiceException(
        code: AuthFailedType.signInFailed,
        errorMessage: 'Sign in failed. Please try again after some time',
        stackTrace: 'Failed $e, $st',
      );
    }
  }

  static Future<void> logout() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}

class FirebaseServiceException implements Exception {
  FirebaseServiceException({
    required this.code,
    required this.errorMessage,
    this.stackTrace,
  });

  final AuthFailedType code;
  final String errorMessage;
  final dynamic stackTrace;
}

enum AuthFailedType {
  userCanceled,
  networkIssue,
  signInFailed,
}
