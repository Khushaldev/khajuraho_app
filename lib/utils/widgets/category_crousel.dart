import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/home_bloc.dart';
import '../../domain/taxonomy.dart';
import '../../presentation/taxonomy_screen/taxonomy_children_screen.dart';
import '../helpers/colors.dart';
import '../helpers/constants.dart';
import '../helpers/styles.dart';
import 'bottom_sheet.dart';
import 'cached_network_image.dart';
import 'tile.dart';

class RecentlyOpenedCategoryCarousel extends StatefulWidget {
  const RecentlyOpenedCategoryCarousel({super.key});

  @override
  State<RecentlyOpenedCategoryCarousel> createState() => RecentlyOpenedCategoryCrousealState();
}

class RecentlyOpenedCategoryCrousealState extends State<RecentlyOpenedCategoryCarousel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        }

        if (state.taxonomies.isEmpty || state.hasError) {
          return emptyWidget;
        }

        final List<Taxonomy> taxonomies = state.taxonomies;
        return AppTile(
          title: 'Recently Opened',
          spacing: verticalMargin12,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 100),
            child: CarouselView(
              onTap: (int index) => context.push(
                TaxonomyChildrenScreen.routeName,
                extra: {
                  TaxonomyChildrenScreen.taxonomyIdKey: taxonomies[index].id,
                  TaxonomyChildrenScreen.taxonomyObjectKey: taxonomies[index],
                },
              ),
              shrinkExtent: 12,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              itemExtent: 100,
              children: List.generate(state.carouselItems.length, (index) {
                final Taxonomy taxonomy = taxonomies[index];

                return ColoredBox(
                  color: whiteColor,
                  child: CategoryCard(
                    taxonomy: taxonomy,
                    taxonomies: state.taxonomies,
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}

class CategoryPanel extends StatefulWidget {
  const CategoryPanel({super.key});

  @override
  State<CategoryPanel> createState() => _CategoryPanelState();
}

class _CategoryPanelState extends State<CategoryPanel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        }

        if (state.taxonomies.isEmpty || state.hasError) {
          return emptyWidget;
        }

        return AppTile(
          title: 'Categories',
          spacing: verticalMargin12,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: CategoryGrid(
              taxonomies: state.taxonomies,
            ),
          ),
        );
      },
    );
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.taxonomies,
    this.showAll = false,
  });

  final bool showAll;
  final List<Taxonomy> taxonomies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: showAll
          ? taxonomies.length
          : taxonomies.length > 6 //
              ? 6
              : taxonomies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 48,
        crossAxisCount: 3,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (_, int index) {
        final Taxonomy taxonomy = taxonomies[index];

        final bool showMore = taxonomies.length > 6 && index == 5 && !showAll;

        return CategoryCard(
          taxonomy: taxonomy,
          taxonomies: taxonomies,
          hasShowMore: showMore,
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.taxonomy,
    required this.taxonomies,
    this.hasShowMore = false,
  });

  final Taxonomy taxonomy;
  final List<Taxonomy> taxonomies;
  final bool hasShowMore;

  @override
  Widget build(BuildContext context) {
    const double placeholderSize = 36.0;
    const String showMoreIconUrl = 'https://img.icons8.com/fluency/48/connection-status-off.png';
    final Widget placeholder = Container(
      width: placeholderSize,
      height: placeholderSize,
      decoration: BoxDecoration(
        color: placeholderGreyColor,
        borderRadius: BorderRadius.circular(placeholderSize / 2),
      ),
    );

    return Padding(
      padding: verticalPadding8 + horizontalPadding8,
      child: InkWell(
        onTap: () {
          if (hasShowMore) {
            bottomSheetHelper(
              backgroundColor: fullScreenWhiteColor,
              context,
              (context) {
                return Padding(
                  padding: verticalPadding4,
                  child: CategoryGrid(
                    showAll: true,
                    taxonomies: taxonomies,
                  ),
                );
              },
            );
          } else {
            context.push(
              TaxonomyChildrenScreen.routeName,
              extra: {
                TaxonomyChildrenScreen.taxonomyIdKey: taxonomy.id,
                TaxonomyChildrenScreen.taxonomyObjectKey: taxonomy,
              },
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (taxonomy.iconUrl == null) ...[
              placeholder,
            ] else ...[
              CachedImage(
                url: hasShowMore ? showMoreIconUrl : taxonomy.iconUrl!,
                width: placeholderSize,
                height: placeholderSize,
                placeholder: placeholder,
                errorWidget: placeholder,
              ),
            ],
            verticalMargin8,
            Text(
              hasShowMore ? 'Show More' : taxonomy.translatedName(context),
              style: TextStyles.regular1,
              overflow: TextOverflow.clip,
              softWrap: false,
            ),
          ],
        ),
      ),
    );
  }
}
