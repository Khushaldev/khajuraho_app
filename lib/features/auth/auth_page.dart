import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/services/firebase/firebase_service.dart';
import '../../shared/widgets/full_page_loading.dart';
import 'bloc/auth_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _LoginPageBody();
  }
}

class _LoginPageBody extends StatefulWidget {
  @override
  State<_LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<_LoginPageBody> {
  void _handleGoogleAuth(BuildContext cxt) {
    cxt.read<AuthBloc>().add(AuthEvent.signInWithGoogle());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) async {},
      child: BlocProvider.value(
        value: AuthBloc(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            if (state is AuthSuccess) {
              // context.go(AppRouteConstants.home);
            } else if (state is AuthError) {
              print(state.error);
            }
          },
          builder: (context, state) {
            return FullPageLoader(
              isLoading: state is AuthFullPageLoading,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => _handleGoogleAuth(context),
                      child: Text("Sign in with google"),
                    ),
                    ElevatedButton(
                      onPressed: () => FirebaseService.logout(),
                      child: Text("Logout"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
