import 'package:bloc/bloc.dart';
import 'package:client_app/application/user/auth/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../di/di_container.dart';
import '../domain/app_store/app_store.dart';
import '../domain/user_profile.dart';
import 'services/user_service.dart';

part 'add_user_details_bloc.freezed.dart';

@injectable
class AddUserDetailsBloc extends Bloc<AddUserDetailsEvent, AddUserDetailsState> {
  AddUserDetailsBloc() : super(AddUserDetailsState.initial()) {
    on<AddUserDetailsEvent>(
      (event, emit) async {
        await event.when(
          submit: (String firstName, String lastName) async => _onSubmit(
            emit,
            firstName,
            lastName,
          ),
        );
      },
    );
  }

  void _onSubmit(
    Emitter<AddUserDetailsState> emit,
    String firstName,
    String lastName,
  ) async {
    emit(state.copyWith(isSubmitting: true, hasError: false));

    final UserProfile userProfile = await diContainer<AuthService>() //
        .getUserProfile();

    try {
      if (userProfile.id != UserProfile.visitor.id) {
        await UserService.updateUserProfile(
          userProfile.copyWith(
            firstName: firstName,
            lastName: lastName,
            isFirstTime: false,
          ),
        );

        return emit(state.copyWith(isSubmitting: false, isSuccess: true));
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          hasError: true,
          navigateBackToSignIn: true,
          errorMessage: 'Can\'t update details rightnow. Please try again',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSubmitting: false,
          hasError: true,
          navigateBackToSignIn: true,
          errorMessage: 'Something went wrong, please try again',
        ),
      );
    }
  }
}

@freezed
class AddUserDetailsEvent with _$AddUserDetailsEvent {
  const factory AddUserDetailsEvent.submit({
    required String firstName,
    required String lastName,
  }) = _Submit;
}

@freezed
class AddUserDetailsState with _$AddUserDetailsState {
  const factory AddUserDetailsState({
    required bool isSubmitting,
    @Default(false) isSuccess,
    @Default(false) bool hasError,
    @Default(false) bool navigateBackToSignIn,
    String? errorMessage,
  }) = _AddUserDetailsState;

  factory AddUserDetailsState.initial() => const AddUserDetailsState(
        isSubmitting: false,
      );
}
