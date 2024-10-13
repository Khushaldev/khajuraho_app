// import 'package:client_app/domain/app_store/app_state.dart';
// import 'package:client_app/domain/repositories/auth_repository/auth_repository.dart';
// import 'package:client_app/navigator/navigator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';

// @injectable
// class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
//   final AppNavigator _navigator;
//   final AuthRepository _authRepository;

//   AuthenticationBloc(
//     this._navigator,
//     this._authRepository,
//   ) : super(const InitialAuthState()) {
//     on<AuthEvent>(
//       (event, emit) async {
//         return switch (event) {
//           AuthSignInEvent() => _onSignIn(event, emit),
//           AuthSignOutEvent() => _onSignOut(event, emit),
//           AuthNavigateEvent() => _onNavigate(event, emit),
//           AddUserDetailsEvent() => _onSubmit(event, emit),
//         };
//       },
//     );
//   }

//   AppState get appState => _authRepository.appStore.appState;

//   Future<void> _onNavigate(
//     AuthNavigateEvent event,
//     Emitter<AuthState> emit,
//   ) async {
//     // if (appState.customer.isFirstTime) {
//     //   _navigator.goToAddUserDeatilsPage();
//     //   return;
//     // }

//     // _navigator.goToDashboard();
//   }

//   Future<void> _onSignIn(
//     AuthSignInEvent event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(const LoadingAuthState());
//     try {
//       final String? userId = await _authRepository.signIn();

//       if (userId == null) {
//         emit(const AuthFailedState());
//         return;
//       }

//       final Map<String, dynamic>? user = await _authRepository.getUser(userId);

//       if (user == null) {
//         await _authRepository.createUser(userId);
//         emit(const AuthNextStepState());
//         return;
//       }

//       _authRepository.updateCache(user);
//       emit(const AuthSuccessState());
//     } catch (e) {
//       emit(const AuthFailedState());
//     }
//   }

//   Future<void> _onSignOut(
//     AuthSignOutEvent event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(const LoadingAuthState());
//     try {
//       await _authRepository.signOut();
//       emit(const AuthLogoutSuccessState());
//     } catch (e) {
//       emit(const AuthLogoutFailedState());
//     }
//   }

//   Future<void> _onSubmit(
//     AddUserDetailsEvent event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(const LoadingAuthState());
//     try {
//       final customer = await _authRepository.updateCustomerAfterSignUp(
//         event.firstName,
//         event.lastName,
//       );

//       if (customer != null) {
//         emit(const AuthSuccessState());
//       }
//     } catch (e) {
//       emit(const AuthFailedState());
//     }
//   }
// }

// // AuthEvent classes
// sealed class AuthEvent {}

// class AuthSignInEvent implements AuthEvent {
//   const AuthSignInEvent();
// }

// class AuthSignOutEvent implements AuthEvent {
//   const AuthSignOutEvent();
// }

// class AddUserDetailsEvent implements AuthEvent {
//   const AddUserDetailsEvent({
//     required this.firstName,
//     required this.lastName,
//     required this.context,
//   });

//   final String firstName;
//   final String lastName;
//   final BuildContext context;
// }

// class AuthNavigateEvent implements AuthEvent {
//   const AuthNavigateEvent();
// }

// // AuthState classes
// sealed class AuthState {}

// class InitialAuthState implements AuthState {
//   const InitialAuthState();
// }

// class LoadingAuthState implements AuthState {
//   const LoadingAuthState();
// }

// class AuthSuccessState implements AuthState {
//   const AuthSuccessState();
// }

// class AuthFailedState implements AuthState {
//   const AuthFailedState();
// }

// class AuthLogoutSuccessState implements AuthState {
//   const AuthLogoutSuccessState();
// }

// class AuthLogoutFailedState implements AuthState {
//   const AuthLogoutFailedState();
// }

// class AuthNextStepState implements AuthState {
//   const AuthNextStepState();
// }

// class AuthNavigateToDashboardState implements AuthState {
//   const AuthNavigateToDashboardState();
// }
