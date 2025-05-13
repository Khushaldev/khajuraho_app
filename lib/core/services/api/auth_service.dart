import 'package:khajuraho/core/services/dio/dio_service.dart';
import 'package:khajuraho/dto/request_models/google_auth_request.dart';
import 'package:khajuraho/dto/response_models/google_auth_response.dart';
import 'package:khajuraho/dto/result.dart';

class AuthService {
  AuthService(this._dioService) {
    _dioService.serializerFunctions.addAll({
      GoogleAuthResponse: GoogleAuthResponse.fromJson,
    });
  }

  final DioService _dioService;

  static final String googleAuthPath = '/v1/auth/google';

  Future<Result<GoogleAuthResponse, AppError>> loginWithGoogle({
    required GoogleAuthRequest request,
  }) async {
    return _dioService.post<GoogleAuthResponse>(
      googleAuthPath,
      data: request.toJson(),
    );
  }
}
