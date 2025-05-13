import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khajuraho/core/routes/router.gr.dart';
import 'package:khajuraho/core/utils/constants.dart';
import 'package:khajuraho/core/utils/extensions/theme_extension.dart';
import 'package:khajuraho/core/utils/overlay.dart';
import 'package:khajuraho/features/auth/bloc/auth_bloc.dart';
import 'package:khajuraho/shared/widgets/full_page_loading.dart';
import 'package:khajuraho/shared/widgets/spacing.dart';
import 'package:khajuraho/theme/colors.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void handleGoogleSignUp(BuildContext cxt) {
    cxt.read<AuthBloc>().add(AuthEvent.signInWithGoogle());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, _) async {},
        child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
            listenWhen: (previous, current) => previous != current,
            listener: (context, state) {
              if (state is AuthSuccess) {
                if (context.mounted) {
                  context.replaceRoute(const HomeRoute());
                }
              } else if (state is AuthError) {
                AppOverlay.showToast(state.error);
              }
            },
            builder: (context, state) {
              return FullPageLoader(
                isLoading: state is AuthLoading,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetPath.loginBgPNG),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      const LogoSection(),
                      const Spacer(),
                      Padding(
                        padding: verticalPadding32 + horizontalPadding24,
                        child: GoogleSignUpButton(
                          onPressed: () => handleGoogleSignUp(context),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.neutralWhite,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        icon: SvgPicture.asset(
          AssetPath.googleSVG,
        ),
        label: Text(
          'Sign up with Google',
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.backgroundDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LoginIntroText(),
        ],
      ),
    );
  }
}

class LoginIntroText extends StatefulWidget {
  const LoginIntroText({super.key});

  @override
  State<LoginIntroText> createState() => _LoginIntroTextState();
}

class _LoginIntroTextState extends State<LoginIntroText> with TickerProviderStateMixin {
  late AnimationController _titleController;
  late AnimationController _subtitleController;
  late Animation<Offset> _titleSlide;
  late Animation<Offset> _subtitleSlide;
  late Animation<double> _subtitleOpacity;

  @override
  void initState() {
    super.initState();

    _titleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(); // Looping color for title

    _subtitleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _titleSlide = Tween<Offset>(
      begin: const Offset(0, 0.4),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _subtitleController, curve: Curves.easeOut),
    );

    _subtitleSlide = Tween<Offset>(
      begin: const Offset(0, 0.4),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _subtitleController,
        curve: const Interval(
          0.4,
          1.0,
          curve: Curves.easeOut,
        ),
      ),
    );

    _subtitleOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _subtitleController, curve: const Interval(0.5, 1.0)),
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      _subtitleController.forward(); // Animate subtitle in after slight delay
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(
          position: _titleSlide,
          child: Text(
            'Travel Companion',
            textAlign: TextAlign.center,
            style: context.theme.textTheme.displaySmall?.copyWith(
              color: const Color.fromARGB(255, 27, 75, 117),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        FadeTransition(
          opacity: _subtitleOpacity,
          child: SlideTransition(
            position: _subtitleSlide,
            child: Text(
              'Explore. Taste. Capture Memories.',
              textAlign: TextAlign.center,
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: const Color.fromARGB(255, 27, 75, 117),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
