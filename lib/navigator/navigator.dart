// import 'package:auto_route/auto_route.dart';
// import 'package:client_app/navigator/router/app_router.dart';
// import 'package:client_app/presentation/auth/auth_page.dart';
// import 'package:client_app/presentation/auth/pages/add_user_details_page.dart';
// import 'package:client_app/presentation/category/category_dynamic_page.dart';
// import 'package:client_app/presentation/home_page/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';

// @injectable
// class AppNavigator {
//   const AppNavigator(this._router);

//   final AppRouter _router;

//   Future<void> goToAuthPage(BuildContext context) =>
//       context.router.replaceNamed(AuthenticationPage.path);

//   Future<void> goToAddUserDeatilsPage(BuildContext context) =>
//       context.router.replaceNamed(AddUserDetailsPage.path);

//   Future<void> goToDashboard(BuildContext context) => context.router.replaceNamed('');

//   Future<void> goToHomePage(BuildContext context) => context.router.pushNamed(
//         HomePage.path,
//       );

//   Future<void> goToCategoryPage(BuildContext context, String id) =>
//       context.router.pushNamed('${HomePage.path}/${CategoryDynamicPage.path}');
// }
