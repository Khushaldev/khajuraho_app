import 'package:client_app/application/firebase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/app_store/app_store.dart';
import '../../../../domain/user_profile.dart';
import '../../../../generated/locale_keys.g.dart';
import '/utils/helpers/log.dart';
import '../auth_service.dart';
import '/di/di_container.dart';
import '/env/env.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
    on<SignInEvent>(
      (event, emit) async {
        await event.when(
          signedInWithOAuth: (type) async => _onSignIn(emit, type),
          signOut: () async => _onSignOut(emit),
        );
      },
    );
  }

  final _authService = diContainer<AuthService>();

  String userCollectionName = 'user_profile';

  Future<void> _onSignIn(
    Emitter<SignInState> emit,
    AuthType authProviderType,
  ) async {
    emit(state.copyWith(isSubmitting: true));
    String? userId;

    try {
      switch (Env.authServiceProvider) {
        case AuthServiceProvider.firebase:
          userId = await _authService.signInWithOAuth(authProviderType);
          await _findOrCreateUserProfileInFirestore(userId);
          break;
      }

      if (userId == null) {
        return emit(
          state.copyWith(
            isSubmitting: false,
            hasError: true,
            errorMessage: LocaleKeys.signInErrorMessage.tr(),
          ),
        );
      }

      return emit(state.copyWith(isSubmitting: false, isSuccess: true));
    } catch (e) {
      emit(
        state.copyWith(
          isSubmitting: false,
          hasError: true,
          errorMessage: LocaleKeys.signInErrorMessage.tr(),
        ),
      );
    }
  }

  Future<void> _findOrCreateUserProfileInFirestore(String? userId) async {
    UserProfile userProfile = UserProfile.visitor;

    if (userId == null) return;

    final DocumentSnapshot<Object?> doc = await FirestoreService.read(
      collectionName: userCollectionName,
      docId: userId,
    );

    final userData = doc.data();
    if (userData == null) {
      userProfile = UserProfile(id: userId, isFirstTime: true);
      await FirestoreService.create(
        collectionName: userCollectionName,
        data: userProfile.toJson(),
        docId: userId,
      );
    } else {
      userProfile = UserProfile.fromJson(userData as Map<String, dynamic>);
    }

    _cacheUserData(userProfile);
  }

  void _cacheUserData(UserProfile userProfile) {
    diContainer<AppStore>().setUserProfile(userProfile);
  }

  Future<void> _onSignOut(
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(isSubmitting: true));

    await _authService.signOut();
    Log.info('Sign out successfully');

    emit(state.copyWith(isSubmitting: false));
  }
}

@freezed
class SignInEvent with _$SignInEvent {
  const SignInEvent._();

  const factory SignInEvent.signedInWithOAuth(
    AuthType type,
  ) = SignedInWithOAuth;

  const factory SignInEvent.signOut() = SignOut;
}

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState({
    required bool isSubmitting,
    @Default(false) isSuccess,
    @Default(false) bool hasError,
    String? errorMessage,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        isSubmitting: false,
      );
}
