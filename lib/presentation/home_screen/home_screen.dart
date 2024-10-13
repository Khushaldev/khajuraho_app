import 'package:flutter/material.dart';

import '../../application/user/auth/auth_service.dart';
import '../../di/di_container.dart';
import '../../domain/user_profile.dart';
import '../../utils/helpers/constants.dart';
import '../../utils/helpers/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 255),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<UserProfile>(
              future: diContainer<AuthService>().getUserProfile(),
              builder: (context, snapshot) {
                final String? firstName = snapshot.data?.firstName;
                return Column(
                  children: [
                    Padding(
                      padding: horizontalPadding24 + verticalPadding8 + topPadding4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://img.icons8.com/tiny-color/16/marker.png',
                              ),
                              horizontalMargin8,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyles.semiBold2,
                                  ),
                                  Text(
                                    'Vpo Khera Dabar...',
                                    style: TextStyles.regular1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          firstName != null && firstName.isNotEmpty
                              ? Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFe7f5ff),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      firstName[0].toUpperCase(),
                                      style: TextStyles.semiBold5!.copyWith(
                                        color: const Color(0xFF1971c2),
                                      ),
                                    ),
                                  ),
                                )
                              : emptyWidget,
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            // const Search(),
            // const MarketingCarousel(),
            // RecentlyOpenedCategoryCarousel(
            //   carouselItems: state.categories,
            // ),
            // CategoryPanel(
            //   carouselItems: state.categories,
            // ),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  static const String routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Screen'),
      ),
      body: Center(child: Text('Search Screen Content')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(child: Text('Profile Screen Content')),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Back to Home Screen'),
        ),
      ),
    );
  }
}





// import 'dart:math';

// import 'package:auto_route/auto_route.dart';
// import 'package:client_app/domain/app_store/app_state.dart';
// import 'package:client_app/domain/app_store/app_store.dart';
// import 'package:client_app/presentation/home_page/widgets/marketing_carousel.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:client_app/di/di_container.dart';
// import 'package:client_app/domain/models/hotel_model.dart';
// import 'package:client_app/navigator/router/app_router.dart';
// import 'package:client_app/presentation/home_page/bloc/home_page_bloc.dart';
// import 'package:client_app/utils/helpers/assets.dart';
// import 'package:client_app/utils/helpers/constants.dart';
// import 'package:client_app/utils/helpers/enums.dart';
// import 'package:client_app/utils/helpers/styles.dart';
// import 'package:client_app/utils/widgets/atoms/input_text.dart';
// import 'package:client_app/utils/widgets/category_crousel.dart';
// import 'package:svg_flutter/svg.dart';

// @RoutePage()
// class DashboardPage extends StatelessWidget {
//   // static const String pathName = '';
//   // static const String path = '/';

//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<DashboardBloc>(
//       create: (context) => diContainer<DashboardBloc>(),
//       child: BlocBuilder<DashboardBloc, DashboardState>(builder: (context, state) {
//         return AutoTabsRouter.pageView(
//           homeIndex: 0,
//           routes: const [
//             HomeRoute(),
//             FavoriteRoute(),
//             AccountRoute(),
//           ],
//           builder: (context, child, _) {
//             final tabsRouter = AutoTabsRouter.of(context);
//             return Scaffold(
//               body: child,
//               bottomNavigationBar: BottomNavigationBar(
//                 // backgroundColor: const Color(0xFF11408A),
//                 selectedItemColor: const Color.fromARGB(255, 25, 134, 198),
//                 unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
//                 unselectedLabelStyle: TextStyles.regular1,
//                 selectedLabelStyle: TextStyles.regular1,
//                 showSelectedLabels: true,
//                 currentIndex: tabsRouter.activeIndex,
//                 onTap: tabsRouter.setActiveIndex,
//                 items: [
//                   BottomNavigationBarItem(
//                     label: 'Home',
//                     // icon: Icon(
//                     //   Icons.home,
//                     // ),
//                     icon: tabsRouter.activeIndex == 0
//                         ? Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFe7f5ff),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: SvgPicture.asset(ImageAssets.homeBlue),
//                             ),
//                           )
//                         : Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFf8f9fa),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: SvgPicture.asset(ImageAssets.homeBlack),
//                             ),
//                           ),
//                   ),
//                   BottomNavigationBarItem(
//                     label: 'Favorite',
//                     // icon: Icon(
//                     //   Icons.bookmark,
//                     // ),
//                     icon: tabsRouter.activeIndex == 1
//                         ? Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFe7f5ff),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: SvgPicture.asset(ImageAssets.bookmarkBlue),
//                             ),
//                           )
//                         : Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFf8f9fa),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: SvgPicture.asset(ImageAssets.bookmarkBlack),
//                             ),
//                           ),
//                   ),
//                   BottomNavigationBarItem(
//                     label: 'Account',
//                     // icon: Icon(
//                     //   Icons.account_circle,
//                     // ),
//                     icon: tabsRouter.activeIndex == 2
//                         ? Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFe7f5ff),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: Image.asset(ImageAssets.customerBlue),
//                             ),
//                           )
//                         : Container(
//                             height: 32,
//                             width: 32,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFf8f9fa),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: Image.asset(ImageAssets.customerBlack),
//                             ),
//                           ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// @RoutePage()
// class HomePage extends StatefulWidget {
//   static const String pathName = '';
//   static const String path = '/$pathName';

//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final appStore = diContainer<AppStore>();

//   @override
//   Widget build(BuildContext context) {
//     // final theme = Theme.of(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 248, 248, 255),
//       body: SafeArea(
//         child: BlocBuilder<DashboardBloc, DashboardState>(
//           builder: (context, state) => switch (state) {
//             InitialDashboardState() => const SizedBox(),
//             LoadingCategoryListState() => const Center(child: CircularProgressIndicator()),
//             ErrorCategoryListState() => throw UnimplementedError(),
//             CategoryListState() => SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     StreamBuilder<AppState>(
//                         initialData: appStore.appState,
//                         stream: appStore.appStateStream,
//                         builder: (context, snapshot) {
//                           final String? firstName = snapshot.data?.customer.firstName;
//                           return Column(
//                             children: [
//                               Padding(
//                                 padding: horizontalPadding24 + verticalPadding8 + topPadding4,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Image.network(
//                                           'https://img.icons8.com/tiny-color/16/marker.png',
//                                         ),
//                                         horizontalMargin8,
//                                         Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Home',
//                                               style: TextStyles.semiBold2,
//                                             ),
//                                             Text(
//                                               'Vpo Khera Dabar...',
//                                               style: TextStyles.regular1,
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     firstName != null && firstName.isNotEmpty
//                                         ? Container(
//                                             height: 32,
//                                             width: 32,
//                                             decoration: const BoxDecoration(
//                                               color: Color(0xFFe7f5ff),
//                                               shape: BoxShape.circle,
//                                             ),
//                                             child: Center(
//                                               child: Text(
//                                                 firstName[0].toUpperCase(),
//                                                 style: TextStyles.semiBold5!.copyWith(
//                                                   color: const Color(0xFF1971c2),
//                                                 ),
//                                               ),
//                                             ),
//                                           )
//                                         : emptyWidget,
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           );
//                         }),
//                     const Search(),
//                     const MarketingCarousel(),
//                     RecentlyOpenedCategoryCarousel(
//                       carouselItems: state.categories,
//                     ),
//                     CategoryPanel(
//                       carouselItems: state.categories,
//                     ),
//                   ],
//                 ),
//               ),
//           },
//         ),
//       ),
//     );
//   }
// }

// class Search extends StatelessWidget {
//   const Search({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: verticalPadding8 + horizontalPadding24,
//       child: const Column(
//         children: [
//           InputText(
//             size: InputSize.extraSmall,
//             label: '#Explore new places, food nearby you...',
//             prefixIcon: Icons.search_rounded,
//             maxLines: 1,
//           )
//         ],
//       ),
//     );
//   }
// }

// class PopularRoomsAroundYou extends StatelessWidget {
//   const PopularRoomsAroundYou({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: horizontalPadding24 + verticalPadding8,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         // mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Text(
//                   'Popular Nearby you',
//                   style: TextStyles.bold2,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {},
//                 child: Text(
//                   'View all',
//                   style: TextStyles.bold1,
//                 ),
//               ),
//             ],
//           ),
//           verticalMargin12,
//           LayoutBuilder(builder: (context, constraint) {
//             return SizedBox(
//               height: min(340, MediaQuery.of(context).size.height * 0.36),
//               child: ListView.builder(
//                 itemCount: 4,
//                 shrinkWrap: true,
//                 padding: rightPadding8,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: ((context, index) {
//                   return HotelCard(
//                     hotel: hotelData,
//                   );
//                 }),
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// class BigCities extends StatelessWidget {
//   const BigCities({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cities = [
//       'Nearby',
//       'Delhi',
//       'Gurugram',
//       'Chandigarh',
//       'Haryana',
//       'Punjab',
//       'Hyderapad',
//       'Pune',
//     ];
//     return SizedBox(
//       height: 96,
//       child: ListView.builder(
//         itemCount: cities.length,
//         scrollDirection: Axis.horizontal,
//         padding: bottomPadding16 + horizontalPadding24,
//         itemBuilder: ((context, index) {
//           return CityCard(
//             cityName: cities[index],
//           );
//         }),
//       ),
//     );
//   }
// }

// class CityCard extends StatelessWidget {
//   final String cityName;

//   const CityCard({
//     super.key,
//     required this.cityName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: rightPadding12,
//       child: Center(
//         child: Container(
//           padding: verticalPadding24 + horizontalPadding24,
//           decoration: BoxDecoration(
//             color: const Color(0xFFf3f0ff),
//             borderRadius: BorderRadius.circular(6),
//           ),
//           child: Center(
//             child: Text(
//               cityName,
//               style: TextStyles.semiBold2?.copyWith(
//                 color: const Color(0xFF6741d9),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Filters extends StatelessWidget {
//   const Filters({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cities = [
//       'Price',
//       'Ratings',
//       'Location',
//     ];
//     return SizedBox(
//       height: 60,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cities.length,
//               scrollDirection: Axis.horizontal,
//               padding: bottomPadding16 + horizontalPadding24,
//               itemBuilder: (context, index) {
//                 return FilterChip(
//                   filterName: cities[index],
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: bottomPadding16,
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.tune_outlined),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FilterChip extends StatelessWidget {
//   final String filterName;

//   const FilterChip({
//     super.key,
//     required this.filterName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: rightPadding4,
//       child: Chip(
//         label: Text(
//           filterName,
//           style: TextStyles.semiBold1?.copyWith(
//             color: const Color(0xFF343a40),
//           ),
//         ),
//         elevation: 10,
//         backgroundColor: const Color(0xFFF2F2F3),
//         side: BorderSide.none,
//       ),
//     );
//   }
// }

// class HotelCard extends StatelessWidget {
//   final Hotel hotel;
//   const HotelCard({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: rightPadding12,
//       child: Container(
//         color: Colors.white,
//         child: AspectRatio(
//           aspectRatio: 1,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               // border: Border.all(),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   // height: 200,
//                   // width: double.infinity,
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(6),
//                       topRight: Radius.circular(6),
//                     ),
//                     child: Image.network(
//                       hotel.images![0],
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                       // color: Colors.amber,
//                       //     border: Border.all(
//                       //   color: Colors.grey[200]!,
//                       // )
//                       ),
//                   child: Padding(
//                     padding: horizontalPadding4 + verticalPadding4,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 // width: 160,
//                                 child: Text(
//                                   hotel.title,
//                                   style: TextStyles.bold2,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         verticalMargin4,
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     '₹${hotel.price!.price}',
//                                     style: TextStyles.bold2,
//                                   ),
//                                   verticalMargin2,
//                                   Text(
//                                     '+ ₹${hotel.price!.tax} taxes and fees',
//                                     style: TextStyles.semiBold0?.copyWith(
//                                       color: Colors.grey[600],
//                                     ),
//                                   ),
//                                   verticalMargin2,
//                                   Text(
//                                     'Per Night',
//                                     style: TextStyles.semiBold0?.copyWith(
//                                       color: Colors.grey[600],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Excellent',
//                                       style: TextStyles.semiBold1?.copyWith(
//                                         color: Colors.green[800],
//                                       ),
//                                     ),
//                                     horizontalMargin4,
//                                     Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                           '${hotel.rating?.stars}/5 raitings',
//                                           style: TextStyles.bold0?.copyWith(
//                                               // color: Colors.yellow[800],
//                                               ),
//                                         ),
//                                         Text(
//                                           '${hotel.rating?.totalLiked} liked',
//                                           style: TextStyles.bold0?.copyWith(
//                                               // color: Colors.yellow[800],
//                                               ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       // color: const Color(0xFFfff0f6),
//                                       borderRadius: BorderRadius.circular(4),
//                                       border: Border.all(color: const Color(0xFFc2255c))),
//                                   padding: verticalPadding2 + horizontalPadding4,
//                                   child: Text(
//                                     'Couple Friendly',
//                                     style: TextStyles.semiBold0
//                                         ?.copyWith(color: const Color(0xFFc2255c)),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }