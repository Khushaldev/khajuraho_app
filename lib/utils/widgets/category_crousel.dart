// import 'package:client_app/di/di_container.dart';
// import 'package:client_app/navigator/navigator.dart';
// import 'package:client_app/utils/helpers/constants.dart';
// import 'package:client_app/utils/helpers/styles.dart';
// import 'package:client_app/utils/widgets/bottom_sheet.dart';
// import 'package:client_app/utils/widgets/tile.dart';
// import 'package:flutter/material.dart';

// class RecentlyOpenedCategoryCarousel extends StatefulWidget {
//   const RecentlyOpenedCategoryCarousel({
//     super.key,
//     required this.carouselItems,
//   });

//   final List<Map<String, dynamic>> carouselItems;

//   @override
//   State<RecentlyOpenedCategoryCarousel> createState() => RecentlyOpenedCategoryCrousealState();
// }

// class RecentlyOpenedCategoryCrousealState extends State<RecentlyOpenedCategoryCarousel> {
//   @override
//   Widget build(BuildContext context) {
//     return AppTile(
//       title: 'Recently Opened',
//       spacing: verticalMargin12,
//       child: ConstrainedBox(
//         constraints: const BoxConstraints(maxHeight: 100),
//         child: CarouselView(
//           shrinkExtent: 12,
//           shape: ContinuousRectangleBorder(
//             borderRadius: BorderRadius.circular(24),
//           ),
//           itemExtent: 100,
//           children: List.generate(widget.carouselItems.length, (index) {
//             final Map<String, dynamic> carouselItem = widget.carouselItems[index];
//             if (carouselItem['name'] == null && carouselItem['image_url'] == null) {
//               return emptyWidget;
//             }
//             return Container(
//               color: Colors.white,
//               child: CategoryCard(
//                 id: carouselItem['id']!.toString(),
//                 name: carouselItem['name']!.toString(),
//                 imageUrl: carouselItem['image_url']!.toString(),
//                 carouselItems: widget.carouselItems,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// class CategoryPanel extends StatefulWidget {
//   const CategoryPanel({super.key, required this.carouselItems});

//   final List<Map<String, dynamic>> carouselItems;

//   @override
//   State<CategoryPanel> createState() => _CategoryPanelState();
// }

// class _CategoryPanelState extends State<CategoryPanel> {
//   @override
//   Widget build(BuildContext context) {
//     return AppTile(
//       title: 'Categories',
//       spacing: verticalMargin12,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: CategoryGrid(
//           carouselItems: widget.carouselItems,
//         ),
//       ),
//     );
//   }
// }

// class CategoryGrid extends StatelessWidget {
//   const CategoryGrid({
//     super.key,
//     required this.carouselItems,
//     this.showAll = false,
//   });

//   final bool showAll;
//   final List<Map<String, dynamic>> carouselItems;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: showAll
//           ? carouselItems.length
//           : carouselItems.length > 6 //
//               ? 6
//               : carouselItems.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisSpacing: 48,
//         crossAxisCount: 3,
//         mainAxisSpacing: 8,
//       ),
//       itemBuilder: (_, int index) {
//         final Map<String, dynamic> carouselItem = carouselItems[index];
//         if (carouselItem['name'] == null && carouselItem['image_url'] == null) {
//           return emptyWidget;
//         }

//         if (carouselItems.length > 6 && index == 5 && !showAll) {
//           return CategoryCard(
//             id: carouselItem['id']!.toString(),
//             name: 'More',
//             imageUrl: 'https://img.icons8.com/fluency/48/connection-status-off.png',
//             carouselItems: carouselItems,
//           );
//         }
//         return CategoryCard(
//           id: carouselItem['id']!.toString(),
//           name: carouselItem['name']!.toString(),
//           imageUrl: carouselItem['image_url']!.toString(),
//           carouselItems: carouselItems,
//         );
//       },
//     );
//   }
// }

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     super.key,
//     required this.id,
//     required this.name,
//     required this.imageUrl,
//     required this.carouselItems,
//   });

//   final String id;
//   final String name;
//   final String imageUrl;
//   final List<Map<String, dynamic>> carouselItems;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: verticalPadding8 + horizontalPadding8,
//       child: InkWell(
//         onTap: () {
//           if (name.toLowerCase() == 'more') {
//             bottomSheetHelper(
//               context,
//               (context) {
//                 return Padding(
//                   padding: verticalPadding4,
//                   child: CategoryGrid(
//                     showAll: true,
//                     carouselItems: carouselItems,
//                   ),
//                 );
//               },
//             );
//           } else {
//             diContainer<AppNavigator>().goToCategoryPage(context, id);
//           }
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(
//               imageUrl,
//               height: 36,
//               width: 36,
//             ),
//             verticalMargin8,
//             Text(
//               name,
//               style: TextStyles.regular1,
//               overflow: TextOverflow.clip,
//               softWrap: false,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
