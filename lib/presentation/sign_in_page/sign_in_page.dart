import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../application/user/auth/auth_service.dart';
import '../../application/user/auth/bloc/sign_in_bloc.dart';
import '../../di/di_container.dart';
import '../../generated/locale_keys.g.dart';
import '../../utils/helpers/alerts.dart';
import '../../utils/helpers/assets.dart';
import '../../utils/helpers/constants.dart';
import '../../utils/helpers/styles.dart';
import '../add_user_details_page/add_user_details_page.dart';
import '../home_screen/home_screen.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const String routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => diContainer<SignInBloc>(),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: _onSignInBlocListener,
        builder: (context, state) {
          return BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return Scaffold(
                body: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF11408A),
                        Color(0xFF11408A),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  // color: theme.primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      emptyWidget,
                      Image.asset(ImageAssets.authIllustrations),
                      Column(
                        children: [
                          if (state.isSubmitting) ...[
                            const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                            verticalMargin48,
                          ] else ...[
                            SignupButton(
                              onPressed: () {
                                context.read<SignInBloc>().add(
                                      const SignInEvent.signedInWithOAuth(
                                        AuthType.google,
                                      ),
                                    );
                              },
                              textColor: Colors.black,
                              logoPath: ImageAssets.googleSvgPath,
                              buttonText: LocaleKeys.signUpWithGoogle.tr(),
                            ),
                            SignupButton(
                              onPressed: () {
                                context.read<SignInBloc>().add(
                                      const SignInEvent.signOut(),
                                    );
                              },
                              backgroundColor: Colors.black,
                              logoPath: ImageAssets.appleSvgPath,
                              buttonText: LocaleKeys.signUpWithApple.tr(),
                            ),
                            verticalMargin12,
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _onSignInBlocListener(BuildContext context, SignInState state) async {
    if (state.isSuccess) {
      final userProfile = await diContainer<AuthService>().getUserProfile();

      if (userProfile.isFirstTime) {
        if (context.mounted) {
          return context.replace(AddUserDetailsPage.routeName);
        }
      } else if (context.mounted) {
        return context.replace(HomeScreen.routeName);
      }
    } else if (state.hasError) {
      unawaited(
        Alerts.showErrorToast!(
          content: state.errorMessage ?? 'Something went wrong',
        ),
      );
    }
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
    this.size = 16,
    required this.logoPath,
    required this.buttonText,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.onPressed,
  });

  final double size;
  final String logoPath;
  final String buttonText;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: bottomPadding16 + horizontalPadding24,
      child: SizedBox(
        height: 44,
        width: double.infinity,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          onPressed: onPressed,
          icon: SvgPicture.asset(
            logoPath,
            height: size,
            width: size,
          ),
          label: Text(
            buttonText,
            style: TextStyles.regular3!.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
