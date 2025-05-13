import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:khajuraho/core/repositories/auth_repository.dart';
import 'package:khajuraho/core/services/firebase/firebase_service.dart';
import 'package:khajuraho/core/services/local_storage/local_storage_key.dart';
import 'package:khajuraho/di/di_container.dart';
import 'package:khajuraho/dto/request_models/google_auth_request.dart';
import 'package:khajuraho/dto/response_models/google_auth_response.dart';
import 'package:khajuraho/dto/result.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<SignInWithGoogle>(_onSignInWithGoogle);
  }

  AuthRepository get _authRepo => di.authRepository;

  void _onSignInWithGoogle(
    SignInWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading());

    final firebaseResult = await FirebaseService.signInWithGoogle();
    if (firebaseResult.isSuccess) {
      final idToken = firebaseResult.value;
      final result = await _authRepo.loginWithGoogle(
        request: GoogleAuthRequest(
          idToken: idToken,
          latitude: 0.0,
          longitude: 0.0,
        ),
      );

      return emit(result.fold(
        (r) => AuthState.authSuccess(response: r),
        (e) => AuthState.error(error: e.message),
      ));
    }

    emit(AuthState.error(error: firebaseResult.error.message));
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    // final event = transition.event;
    final state = transition.nextState;
    if (state is AuthSuccess) {
      // Save user to local storage
      final response = state.response;
      unawaited(di.storage.put(LSKey.user, response.data.user.toJson()));
      unawaited(di.storage.put(LSKey.tokens, response.data.tokens.toJson()));
    } else if (state is AuthError) {
      FirebaseService.logout();
      print(state.error);
    }
    super.onTransition(transition);
  }
}

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
}

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.fullPageloading() = AuthFullPageLoading;

  const factory AuthState.authSuccess({
    required GoogleAuthResponse response,
  }) = AuthSuccess;

  const factory AuthState.error({required String error}) = AuthError;
}
