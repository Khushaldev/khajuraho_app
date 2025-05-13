import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:khajuraho/core/app_config/cubit/app_config_cubit.dart';
import 'package:khajuraho/core/routes/router.dart';
import 'package:khajuraho/core/utils/constants.dart';
import 'package:khajuraho/di/startup/global_objects.dart';
import 'package:khajuraho/firebase_options.dart';
import 'package:khajuraho/models/app_language.dart';
import 'package:khajuraho/theme/theme.dart';
import 'package:path_provider/path_provider.dart';

class AppRunner {
  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getApplicationDocumentsDirectory()).path,
      ),
    );

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // dispose old dependencies
    await StartupDependencies.dispose();

    // initialize new dependencies
    await StartupDependencies.init();

    // final res1 = await di.storage.get(LSKey.user);
    // final res2 = await di.storage.get(LSKey.tokens);
    // await di.storage.put(LSKey.user, {'user': 'user'});
    // await di.storage.put(LSKey.tokens, {'user': 'user'});
    // if (res1 != null && res2 != null) {
    //   final user = User.fromJson(Map<String, dynamic>.from(res1 as Map<dynamic, dynamic>));
    //   final token = AuthTokens.fromJson(Map<String, dynamic>.from(res2 as Map<dynamic, dynamic>));
    //   print(user.toJson());
    //   print(token.toJson());
    // }

    runApp(
      EasyLocalization(
        supportedLocales: AppLanguage.allLocales,
        path: FilePath.translations,
        fallbackLocale: AppLanguage.defaultLocale,
        child: MyApp(rootRouter: AppRouter()),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.rootRouter});

  final AppRouter rootRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppConfigCubit>(
          create: (_) => AppConfigCubit()
            ..setLanguage(
              context: context,
              locale: AppLanguage.defaultLocale,
            ),
        ),
      ],
      child: BlocBuilder<AppConfigCubit, AppConfigState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          final locale = AppLanguage.fromCodeLocale(state.languageCode);

          return MaterialApp.router(
            routerConfig: widget.rootRouter.config(),
            title: Constants.appName,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.isDarkTheme //
                ? ThemeMode.dark
                : ThemeMode.light,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: locale,
          );
        },
      ),
    );
  }
}
