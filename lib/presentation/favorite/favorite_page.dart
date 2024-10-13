import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:client_app/utils/helpers/styles.dart';

@RoutePage()
class FavoritePage extends StatefulWidget {
  static const String pathName = 'favorite';
  static const String path = '/$pathName';

  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Favorites',
          style: TextStyles.semiBold4,
        ),
      ),
      body: Container(
        child: Center(
            child: Text(
          'No Favorites yet?',
          style: TextStyles.regular4,
        )),
      ),
    );
  }
}
