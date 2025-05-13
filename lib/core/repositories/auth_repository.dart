import 'dart:async';

import 'package:khajuraho/core/services/dio/dio_service.dart';

import '../../dto/request_models/google_auth_request.dart';
import '../../dto/response_models/google_auth_response.dart';
import '../../dto/result.dart';
import '../services/api/auth_service.dart';

class AuthRepository {
  AuthRepository(this._authService);

  final AuthService _authService;

  Future<Result<GoogleAuthResponse, AppError>> loginWithGoogle({
    required GoogleAuthRequest request,
  }) async {
    return _authService.loginWithGoogle(request: request);
  }
}
