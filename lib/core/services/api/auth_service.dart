import 'package:khajuraho/dto/response_models/google_auth_response.dart';

import '../../../dto/request_models/google_auth_request.dart';
import '../dio/dio_service.dart';

class AuthService {
  AuthService(this._dioService) {
    _dioService.serializerFunctions.addAll({
      GoogleAuthResponse: GoogleAuthResponse.fromJson,
    });
  }

  final DioService _dioService;

  static final String loginWithGooglePath = '/auth/google';

  Future<(GoogleAuthResponse?, AppError?)> loginWithGoogle({
    required GoogleAuthRequest request,
  }) async {
    final result = await _dioService.post<GoogleAuthResponse>(
      loginWithGooglePath,
      data: request.toJson(),
    );

    return result;
  }
}
