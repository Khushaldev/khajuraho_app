import 'package:flutter/widgets.dart';

class TaxonomyItemListingScreen extends StatelessWidget {
  const TaxonomyItemListingScreen({super.key, required this.taxonomyId});

  final String taxonomyId;

  /// The route name for this screen
  static const String routeName = '/taxonomy-item-listing';

  /// The key for the category ID passed from the route as a parameter
  static const String taxonomyIdKey = 'taxonomy_id';

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
