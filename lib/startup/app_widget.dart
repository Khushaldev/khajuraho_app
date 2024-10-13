import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../application/global_settings/global_settings_cubit.dart';
import '../di/di_container.dart';
import '../utils/helpers/log.dart';
import './startup.dart';
import 'generate_router.dart';

class InitAppWidget implements LaunchObjects {
  const InitAppWidget();

  @override
  Future<void> initialize() async {
    final widget = diContainer<EntryPoint>().create();

    final app = ApplicationWidget(
      child: widget,
    );

    Bloc.observer = ApplicationBlocObserver();
    runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('hi'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        useFallbackTranslations: true,
        child: app,
      ),
    );

    return;
  }

  @override
  Future<void> dispose() async {}
}

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ApplicationWidget> createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  late final GoRouter routerConfig;

  @override
  void initState() {
    super.initState();
    routerConfig = generateRouter(widget.child);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GlobalSettingsCubit>(
          create: (_) => GlobalSettingsCubit()..readLocaleWhenAppLaunch(context),
        ),
      ],
      child: BlocBuilder<GlobalSettingsCubit, GlobalSettingsState>(
        builder: (context, state) {
          _setSystemOverlayStyle();
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFF8F8FF),
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF11408A),
                primary: const Color(0xFF11408A),
                // surface: const Color(0xFF102A43),
              ),
              // scaffoldBackgroundColor: const Color(0xFF243B53),
            ),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: state.locale,
            routerConfig: routerConfig,
          );
        },
      ),
    );
  }

  void _setSystemOverlayStyle() {
    if (Platform.isAndroid) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge,
        overlays: [],
      );
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
        ),
      );
    }
  }
}

class AppGlobals {
  static GlobalKey<NavigatorState> rootNavKey = GlobalKey();
  static NavigatorState get nav => rootNavKey.currentState!;
  static BuildContext get context => rootNavKey.currentContext!;
}

class ApplicationBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Log.error(error.toString());
    super.onError(bloc, error, stackTrace);
  }
}
