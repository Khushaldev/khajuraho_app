import 'package:client_app/application/user/auth/auth_service.dart';
import 'package:client_app/di/di_container.dart';
import 'package:client_app/presentation/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../domain/app_store/app_store.dart';
import '../domain/user_profile.dart';
import '../presentation/add_user_details_page/add_user_details_page.dart';
import '../presentation/home_page/home_page.dart';

GoRouter generateRouter(Widget child) {
  return GoRouter(
    navigatorKey: diContainer<GlobalKey<NavigatorState>>(),
    initialLocation: '/',
    routes: [
      _rootRoute(child),
      _signInPageRoute(),
      _addUserDetailsPageRoute(),
      _mainPageRoute(),
    ],
  );
}

GoRoute _rootRoute(Widget child) {
  return GoRoute(
    path: '/',
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: child,
        transitionsBuilder: _buildFadeTransition,
        transitionDuration: _slowDuration,
      );
    },
  );
}

GoRoute _signInPageRoute() {
  return GoRoute(
    path: SignInPage.routeName,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: const SignInPage(),
        transitionsBuilder: _buildFadeTransition,
        transitionDuration: _slowDuration,
      );
    },
  );
}

// _authMiddleWare() async {
//   final UserProfile userProfile = await diContainer<AuthService>().getUserProfile();

//   if (userProfile.id != UserProfile.visitor.id) {
//     return true;
//   }

//   return false;
// }

GoRoute _addUserDetailsPageRoute() {
  return GoRoute(
    path: AddUserDetailsPage.routeName,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: AddUserDetailsPage(),
        transitionsBuilder: _buildFadeTransition,
        transitionDuration: _slowDuration,
      );
    },
  );
}

GoRoute _mainPageRoute() {
  return GoRoute(
    path: MainPage.routeName,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: const MainPage(),
        transitionsBuilder: _buildFadeTransition,
        transitionDuration: _slowDuration,
      );
    },
  );
}

Widget _buildFadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    FadeTransition(opacity: animation, child: child);

Duration _slowDuration = const Duration(
  milliseconds: 800,
);
