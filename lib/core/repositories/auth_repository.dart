import 'dart:async';

import '../../dto/request_models/google_auth_request.dart';
import '../../dto/response_models/google_auth_response.dart';
import '../services/api/auth_service.dart';
import '../services/dio/dio_service.dart';

class AuthRepository {
  AuthRepository(this._authService);

  final AuthService _authService;

  Future<(GoogleAuthResponse?, AppError?)> loginWithGoogle({
    required GoogleAuthRequest request,
  }) async {
    final result = await _authService.loginWithGoogle(request: request);

    return result;
  }
}
