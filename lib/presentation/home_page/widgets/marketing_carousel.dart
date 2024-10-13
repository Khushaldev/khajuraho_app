import 'package:client_app/application/firebase.dart';
import 'package:client_app/utils/helpers/constants.dart';
import 'package:flutter/material.dart';

class MarketingCarousel extends StatefulWidget {
  const MarketingCarousel({super.key});

  @override
  State<MarketingCarousel> createState() => _MarketingCarouselState();
}

class _MarketingCarouselState extends State<MarketingCarousel> {
  List<String> images = [];

  CarouselController controller = CarouselController(initialItem: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _getBanners();
  }

  _getBanners() async {
    List<Map<String, dynamic>> banners =
        await FirestoreService.readAll(collectionName: 'home_banners');

    if (banners.isNotEmpty) {
      setState(() {
        images.addAll(banners.map((e) => e['image']));
      });
    }

    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      controller = CarouselController(initialItem: 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding8,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200),
        child: CarouselView(
          controller: controller,
          shrinkExtent: 200,
          shape: const ContinuousRectangleBorder(
              // borderRadius: BorderRadius.circular(24),
              ),
          itemExtent: double.infinity,
          children: List.generate(images.length, (index) {
            if (images.isEmpty) {
              return emptyWidget;
            }
            return SizedBox(
              width: double.infinity,
              child: Image.network(
                images[index],
                fit: BoxFit.fill,
              ),
            );
          }),
        ),
      ),
    );
  }
}
