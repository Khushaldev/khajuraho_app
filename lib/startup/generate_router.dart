import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../di/di_container.dart';
import '../presentation/add_user_details_page/add_user_details_page.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/mobile_bottom_navigation.dart';
import '../presentation/sign_in_page/sign_in_page.dart';

GoRouter generateRouter(Widget child) {
  return GoRouter(
    navigatorKey: diContainer<GlobalKey<NavigatorState>>(),
    initialLocation: '/',
    routes: [
      _rootRoute(child),
      _signInPageRoute(),
      _addUserDetailsPageRoute(),
      _mobileHomeScreenWithNavigationBarRoute(),
    ],
  );
}

StatefulShellRoute _mobileHomeScreenWithNavigationBarRoute() {
  return StatefulShellRoute.indexedStack(
    builder: (
      BuildContext context,
      GoRouterState state,
      StatefulNavigationShell navigationShell,
    ) {
      return MobileBottomNavigation(navigationShell: navigationShell);
    },
    branches: <StatefulShellBranch>[
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: HomeScreen.routeName,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
        ],
      ),
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: SearchScreen.routeName,
            builder: (BuildContext context, GoRouterState state) {
              return SearchScreen();
            },
          ),
        ],
      ),
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: ProfileScreen.routeName,
            builder: (_, __) => ProfileScreen(),
          ),
        ],
      ),
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
