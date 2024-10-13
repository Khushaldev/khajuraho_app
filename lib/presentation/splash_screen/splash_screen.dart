import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/splash_bloc.dart';
import '../../di/di_container.dart';
import '../../domain/auth_state.dart';
import '../add_user_details_page/add_user_details_page.dart';
import '../home_screen/home_screen.dart';
import '../sign_in_page/sign_in_page.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => diContainer<SplashBloc>() //
        ..add(const SplashEvent.getUser()),
      child: Scaffold(
        body: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            state.auth.map(
              authenticated: (r) => _handleAuthenticated(context, r),
              unauthenticated: (r) => _handleUnauthenticated(context, r),
              initial: (r) => {},
            );
          },
          child: const SplashBody(),
        ),
      ),
    );
  }
}

Future<void> _handleAuthenticated(
  BuildContext context,
  Authenticated authenticated,
) async {
  await Future.delayed(const Duration(seconds: 1));
  if (context.mounted) {
    if (authenticated.userProfile.isFirstTime) {
      return context.go(AddUserDetailsPage.routeName);
    }

    context.replace(HomeScreen.routeName);
  }
}

Future<void> _handleUnauthenticated(
  BuildContext context,
  Unauthenticated unAuthenticated,
) async {
  await Future.delayed(const Duration(seconds: 1));
  if (context.mounted) {
    context.replace(SignInPage.routeName);
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    //todo: will also after logo placement
    // final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: const SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
