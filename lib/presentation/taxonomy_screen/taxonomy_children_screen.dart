import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/taxonomy.dart';
import '../../utils/helpers/colors.dart';
import '../../utils/helpers/constants.dart';
import '../../utils/helpers/styles.dart';
import 'screens/taxonomy_item_listing_screen.dart';

class TaxonomyChildrenScreen extends StatelessWidget {
  const TaxonomyChildrenScreen({
    super.key,
    required this.taxonomyId,
    required this.taxonomy,
  });

  final String taxonomyId;
  final Taxonomy taxonomy;

  /// The route name for this screen
  static const String routeName = '/taxonomy-children';

  /// The key for the category ID passed from the route as a parameter
  static const String taxonomyIdKey = 'taxonomy_id';

  /// The key for the taxonomy object passed from the route as a parameter
  static const String taxonomyObjectKey = 'taxonomy_object';

  @override
  Widget build(BuildContext context) {
    if (taxonomy.hasChildren) {
      return Scaffold(
        backgroundColor: fullScreenWhiteColor,
        appBar: AppBar(
          backgroundColor: fullScreenWhiteColor,
          elevation: 0,
          title: Text(
            taxonomy.translatedName(context),
            style: TextStyles.semiBold5,
          ),
        ),
        body: TaxonomyChildrenBody(
          children: taxonomy.children,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(taxonomy.translatedName(context)),
      ),
      body: const Center(
        child: Text('Searching for children...'),
      ),
    );
  }
}

class TaxonomyChildrenBody extends StatelessWidget {
  const TaxonomyChildrenBody({super.key, required this.children});

  final List<Taxonomy> children;

  @override
  Widget build(BuildContext context) {
    return TaxonomyChildrenListView(children: children);
  }
}

class TaxonomyChildrenListView extends StatelessWidget {
  const TaxonomyChildrenListView({super.key, required this.children});

  final List<Taxonomy> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding16 + horizontalPadding4 + verticalPadding4,
      child: ListView.separated(
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) => TaxonomyChildTile(
          child: children[index],
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: horizontalPadding4,
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(255, 238, 234, 234),
            ),
          );
        },
      ),
    );
  }
}

class TaxonomyChildTile extends StatelessWidget {
  const TaxonomyChildTile({super.key, required this.child});

  final Taxonomy child;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () {
        if (child.hasChildren) {
          context.push(
            TaxonomyChildrenScreen.routeName,
            extra: {
              TaxonomyChildrenScreen.taxonomyIdKey: child.id,
              TaxonomyChildrenScreen.taxonomyObjectKey: child,
            },
          );
          return;
        }

        context.push(
          TaxonomyItemListingScreen.routeName,
          extra: {
            TaxonomyItemListingScreen.taxonomyIdKey: child.id,
          },
        );
      },
      contentPadding: horizontalPadding4,
      title: Text(
        child.translatedName(context),
        style: TextStyles.regular2,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 12,
      ),
    );
  }
}
