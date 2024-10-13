// import 'package:auto_route/auto_route.dart';
// import 'package:client_app/presentation/account/account_page.dart';
// import 'package:client_app/presentation/auth/auth_page.dart';
// import 'package:client_app/presentation/auth/pages/add_user_details_page.dart';
// import 'package:client_app/presentation/category/category_dynamic_page.dart';
// import 'package:client_app/presentation/favorite/favorite_page.dart';
// import 'package:client_app/presentation/home_page/home_page.dart';
// import 'package:client_app/presentation/splash_screen/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';

// part 'app_router.gr.dart';

// @lazySingleton
// @AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
// class AppRouter extends RootStackRouter {
//   AppRouter(GlobalKey<NavigatorState> navigatorKey) : super(navigatorKey: navigatorKey);

//   @override
//   RouteType get defaultRouteType => const RouteType.material();

//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(
//           path: SplashScreen.path,
//           page: SplashRoute.page,
//           initial: true,
//         ),
//         AutoRoute(
//           path: AuthenticationPage.path,
//           page: AuthenticationRoute.page,
//         ),
//         AutoRoute(
//           path: AddUserDetailsPage.path,
//           page: AddUserDetailsRoute.page,
//         ),
//         AutoRoute(
//           path: HomePage.path,
//           page: HomeRoute.page,
//         ),
//         AutoRoute(
//           path: FavoritePage.path,
//           page: FavoriteRoute.page,
//         ),
//         AutoRoute(
//           path: '',
//           page: DashboardRoute.page,
//           children: [
//             AutoRoute(
//               path: HomePage.pathName,
//               page: HomeRoute.page,
//               children: [
//                 AutoRoute(
//                   path: CategoryDynamicPage.pathName,
//                   page: CategoryDynamicRoute.page,
//                 ),
//               ],
//             ),
//             AutoRoute(
//               path: FavoritePage.pathName,
//               page: FavoriteRoute.page,
//             ),
//             AutoRoute(
//               path: AccountPage.pathName,
//               page: AccountRoute.page,
//             ),
//           ],
//         ),
//       ];

//   @override
//   List<AutoRouteGuard> get guards => [];
// }
