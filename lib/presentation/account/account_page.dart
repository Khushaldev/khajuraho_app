// import 'package:auto_route/auto_route.dart';
// import 'package:client_app/di/di_container.dart';
// import 'package:client_app/domain/app_store/app_state.dart';
// import 'package:client_app/domain/app_store/app_store.dart';
// import 'package:client_app/domain/repositories/auth_repository/auth_repository.dart';
// import 'package:client_app/navigator/router/app_router.dart';
// import 'package:client_app/presentation/account/widgets/account_tile.dart';
// import 'package:client_app/utils/helpers/constants.dart';
// import 'package:client_app/utils/helpers/styles.dart';
// import 'package:client_app/utils/extensions/to_capitalize_initials.dart';
// import 'package:flutter/material.dart';

// @RoutePage()
// class AccountPage extends StatefulWidget {
//   static const String pathName = 'account';
//   static const String path = '/$pathName';

//   const AccountPage({super.key});

//   @override
//   State<AccountPage> createState() => _AccountPageState();
// }

// class _AccountPageState extends State<AccountPage> {
//   // final navigator = diContainer.get<AppNavigator>();
//   final authRepository = diContainer<AuthRepository>();
//   final appStore = diContainer<AppStore>();
//   StackRouter get router => context.router;

//   Future<void> _logOut() async {
//     await authRepository.signOut();
//   }

//   @override
//   void initState() {
//     super.initState();
//     authRepository.isLoggedIn.listen(
//       (isLoggedIn) {
//         if (!isLoggedIn) {
//           router.replace(const AuthenticationRoute());
//           // navigator.goToAuthPage();
//         }
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'My Profile',
//           style: TextStyles.semiBold4,
//         ),
//       ),
//       body: StreamBuilder<AppState>(
//           initialData: appStore.appState,
//           stream: appStore.appStateStream,
//           builder: (context, snapshot) {
//             final String? firstName = snapshot.data?.customer.firstName;
//             final String? lastName = snapshot.data?.customer.lastName;

//             String? fullName;
//             if (firstName != null && firstName.isNotEmpty) {
//               fullName = lastName != null ? '$firstName $lastName' : firstName;
//             }

//             if (fullName == null || fullName.isEmpty) {
//               return emptyWidget;
//             }

//             return SingleChildScrollView(
//               child: Column(
//                 // mainAxisSize: MainAxisSize.min,
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Padding(
//                     padding: horizontalPadding12 + bottomPadding2,
//                     child: Container(
//                       padding: horizontalPadding12 + verticalPadding16,
//                       color: Colors.white,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 height: 48,
//                                 width: 48,
//                                 decoration: const BoxDecoration(
//                                   color: Color(0xFFe7f5ff),
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     fullName[0].toUpperCase(),
//                                     style: TextStyles.semiBold8!.copyWith(
//                                       color: const Color(0xFF1971c2),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               horizontalMargin12,
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     width: 200,
//                                     child: Text(
//                                       fullName.toCapitalizeInitials(),
//                                       style: TextStyles.regular5,
//                                       overflow: TextOverflow.ellipsis,
//                                       maxLines: 1,
//                                     ),
//                                   ),
//                                   //   verticalMargin4,
//                                   //   Text(
//                                   //     'Khushal@gmail.com',
//                                   //     style: TextStyles.regular1,
//                                   //   ),
//                                   //   verticalMargin4,
//                                   //   Text(
//                                   //     '+919311685282',
//                                   //     style: TextStyles.regular1,
//                                   //   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const Padding(
//                             padding: rightPadding16,
//                             child: Icon(Icons.edit),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const AccountTile(
//                     title: 'My Account',
//                     children: [
//                       AccountItem(title: 'Favorites'),
//                       AccountItem(title: 'Saved Places'),
//                     ],
//                   ),
//                   AccountTile(
//                     title: 'General',
//                     children: [
//                       const AccountItem(title: 'Settings'),
//                       AccountItem(
//                         onTap: () async {
//                           await _logOut();
//                         },
//                         title: 'LogOut',
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }
