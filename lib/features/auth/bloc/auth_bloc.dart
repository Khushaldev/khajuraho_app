import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/repositories/auth_repository.dart';
import '../../../core/services/firebase/firebase_service.dart';
import '../../../di/di_container.dart';
import '../../../di/startup/get_it.dart';
import '../../../dto/request_models/google_auth_request.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<SignInWithGoogle>(_onSignInWithGoogle);
  }

  DIObjects get _diObjects => di<DIObjects>();

  AuthRepository get _authRepo => _diObjects.authRepository;

  void _onSignInWithGoogle(SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(AuthState.fullPageloading());

    String? idToken;
    try {
      idToken = await FirebaseService.signInWithGoogle();
    } on FirebaseServiceException catch (e) {
      if (e.code == AuthFailedType.networkIssue) {
        return emit(AuthState.error(error: e.errorMessage));
      } else if (e.code == AuthFailedType.signInFailed) {
        return emit(AuthState.error(error: e.errorMessage));
      }
    } catch (_) {
      return emit(
        AuthState.error(
          error: 'Unable to sign in with Google. Please try again.',
        ),
      );
    }

    if (idToken == null) {
      return emit(
        AuthState.error(
          error: 'Unable to sign in with Google. Please try again.',
        ),
      );
    }

    final (res, error) = await _authRepo.loginWithGoogle(
      request: GoogleAuthRequest(
        idToken: idToken,
        latitude: 0.0,
        longitude: 0.0,
      ),
    );

    if (error != null || res == null) {
      return emit(
        AuthState.error(
          error: error?.message ?? 'Something went wrong. Please try again.',
        ),
      );
    }
    print(res.data.toJson());

    // _authRepo.saveUserInCache(result.$1!);

    emit(AuthState.authSuccess());
  }
}

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.fullPageloading() = AuthFullPageLoading;

  const factory AuthState.authSuccess() = AuthSuccess;

  const factory AuthState.error({required String error}) = AuthError;
}
