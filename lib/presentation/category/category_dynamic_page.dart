// import 'package:auto_route/annotations.dart';
// import 'package:client_app/di/di_container.dart';
// import 'package:client_app/domain/app_store/app_state.dart';
// import 'package:client_app/domain/app_store/app_store.dart';
// import 'package:client_app/domain/models/hotel_model.dart';
// import 'package:client_app/presentation/home_page/home_page.dart';
// import 'package:client_app/utils/helpers/constants.dart';
// import 'package:client_app/utils/helpers/styles.dart';
// import 'package:flutter/material.dart';

// @RoutePage()
// class CategoryDynamicPage extends StatefulWidget {
//   static const String pathName = 'category';
//   static const String path = '/$pathName';

//   const CategoryDynamicPage({super.key, required this.id});

//   final String id;

//   @override
//   State<CategoryDynamicPage> createState() => _CategoryDynamicPageState();
// }

// class _CategoryDynamicPageState extends State<CategoryDynamicPage> {
//   final appStore = diContainer<AppStore>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             StreamBuilder<AppState>(
//                 initialData: appStore.appState,
//                 stream: appStore.appStateStream,
//                 builder: (context, snapshot) {
//                   final String? firstName = snapshot.data?.customer.firstName;
//                   return Column(
//                     children: [
//                       Padding(
//                         padding: horizontalPadding24 + verticalPadding8 + topPadding4,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Image.network(
//                                   'https://img.icons8.com/tiny-color/16/marker.png',
//                                 ),
//                                 horizontalMargin8,
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Home',
//                                       style: TextStyles.semiBold2,
//                                     ),
//                                     Text(
//                                       'Vpo Khera Dabar...',
//                                       style: TextStyles.regular1,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             firstName != null && firstName.isNotEmpty
//                                 ? Container(
//                                     height: 32,
//                                     width: 32,
//                                     decoration: const BoxDecoration(
//                                       color: Color(0xFFe7f5ff),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Center(
//                                       child: Text(
//                                         firstName[0].toUpperCase(),
//                                         style: TextStyles.semiBold5!.copyWith(
//                                           color: const Color(0xFF1971c2),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 : emptyWidget,
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//             const Search(),
//             const Filters(),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 4,
//                 shrinkWrap: true,
//                 padding: horizontalPadding12,
//                 // scrollDirection: Axis.vertical,
//                 itemBuilder: ((context, index) {
//                   return HotelCard(
//                     hotel: hotelData,
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
