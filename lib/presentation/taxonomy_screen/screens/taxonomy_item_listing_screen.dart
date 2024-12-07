import 'package:client_app/utils/helpers/colors.dart';
import 'package:client_app/utils/helpers/constants.dart';
import 'package:client_app/utils/helpers/styles.dart';
import 'package:client_app/utils/widgets/atoms/rating_bar.dart';
import 'package:client_app/utils/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';

class TaxonomyItemListingScreen extends StatelessWidget {
  const TaxonomyItemListingScreen({super.key, required this.taxonomyId});

  final String taxonomyId;

  /// The route name for this screen
  static const String routeName = '/taxonomy-item-listing';

  /// The key for the category ID passed from the route as a parameter
  static const String taxonomyIdKey = 'taxonomy_id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        title: const Text('Taxonomy Item Listing'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: verticalPadding8 + horizontalPadding12,
            padding: allPadding8,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 0.8,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedImage(
                  // width: double.infinity,
                  // height: 160,
                  url: 'https://via.placeholder.com/360x160',
                  placeholder: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  errorWidget: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                verticalMargin12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      // width: boxConstraints.maxWidth / 1.8,
                      child: Text(
                        '1 RK house for rent in Billabong High International School',
                        style: TextStyles.regular2,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    horizontalMargin4,
                    Row(
                      children: [
                        const RatingBar(
                          size: 16,
                        ),
                        Text(
                          '(142)',
                          style: TextStyles.regular0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                verticalMargin16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      // width: boxConstraints.maxWidth / 1.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$2.33',
                            style: TextStyles.regular4!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '\$3.00',
                            style: TextStyles.regular1!.copyWith(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    // horizontalMargin4,
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Contact info',
                    //     style: TextStyles.semiBold1,
                    //     maxLines: 2,
                    //     overflow: TextOverflow.ellipsis,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
