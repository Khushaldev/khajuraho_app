import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../di/di_container.dart';
import '../domain/auth_state.dart';
import '../domain/user_profile.dart';
import 'user/auth/auth_service.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        getUser: (val) async {
          try {
            final userProfile = await diContainer<AuthService>().getUserProfile(
              forceUpdate: true,
            );

            final authState = userProfile.id == UserProfile.visitor.id
                ? const AuthState.unauthenticated('User is visitor')
                : AuthState.authenticated(userProfile);
            emit(state.copyWith(auth: authState));
          } catch (e) {
            await diContainer<AuthService>().signOut();

            emit(
              state.copyWith(
                auth: const AuthState.unauthenticated('User is visitor'),
              ),
            );
          }
        },
      );
    });
  }
}

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.getUser() = _GetUser;
}

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required AuthState auth,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(
        auth: AuthState.initial(),
      );
}
