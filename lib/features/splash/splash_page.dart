import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:khajuraho/core/routes/router.gr.dart';
import 'package:khajuraho/core/services/local_storage/local_storage_key.dart';
import 'package:khajuraho/core/utils/extensions/theme_extension.dart';
import 'package:khajuraho/di/di_container.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateWithDelay();
  }

  bool _isUserLoggedIn() {
    final user = di.storage.get(LSKey.user);
    final token = di.storage.get(LSKey.tokens);
    if (user != null && token != null) {
      return true;
    }
    return false;
  }

  void navigateToRoute() {
    if (_isUserLoggedIn()) {
      context.replaceRoute(const HomeRoute());
    } else {
      context.replaceRoute(const LoginRoute());
    }
  }

  void _navigateWithDelay() {
    // Ensure navigation happens after the first frame renders
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Simulate a delay before navigation
      Future.delayed(const Duration(seconds: 3), () {
        if (context.mounted) {
          navigateToRoute();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.primary,
      body: Center(
        child: Container(),
      ),
    );
  }
}
