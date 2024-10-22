import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../application/user/auth/auth_service.dart';
import '../application/user/auth/firebase_auth_service.dart';
import '../di/di_container.dart';
import '../di/di_initializer.dart';
import '../env/env.dart';
import '../utils/helpers/log.dart';
import 'app_widget.dart';
import 'entry_point.dart';
import 'firebase.dart';
import 'localization.dart';

abstract class EntryPoint {
  Widget create();
}

Future<void> runAppKhajuraho() async {
  await KhajurahoRunner.run(
    AppKhajurahoApplication(),
  );
}

class KhajurahoRunner {
  static Future<void> run(
    EntryPoint entryPoint,
  ) async {
    WidgetsFlutterBinding.ensureInitialized();

    if (kDebugMode) {
      Log.enableFlutterLog();
    }

    if (diContainer.isRegistered(instance: AppLauncher)) {
      await diContainer<AppLauncher>().dispose();
    }

    // Clear all the states in case of rebuilding.
    await diContainer.reset();

    await initDi(entryPoint);

    final launcher = diContainer<AppLauncher>();
    launcher.addObjects(
      [
        const InitLocalization(),
        const InitFirebase(),
        const InitAppWidget(),
      ],
    );
    await launcher.launch();

    return;
  }
}

enum LaunchTaskType {
  dataProcessing,
  appLauncher,
}

abstract class LaunchObjects {
  const LaunchObjects();

  Future<void> initialize();
  Future<void> dispose();
}

class AppLauncher {
  AppLauncher();
  // ignore
  // {required this.context,}

  final List<LaunchObjects> objects = [];

  void addObject(LaunchObjects object) {
    objects.add(object);
  }

  void addObjects(Iterable<LaunchObjects> object) {
    objects.addAll(object);
  }

  Future<void> launch() async {
    for (final object in objects) {
      // await task.initialize(context);
      await object.initialize();
    }
  }

  Future<void> dispose() async {
    for (final object in objects) {
      await object.dispose();
    }
    objects.clear();
  }
}

Future<void> initDi(EntryPoint entryPoint) async {
  diContainer.registerFactory<EntryPoint>(() => entryPoint);

  diContainer.registerLazySingleton<AppLauncher>(
    () => AppLauncher(),
    dispose: (launcher) async {
      await launcher.dispose();
    },
  );

  initDI(diContainer, Environment.dev);

  switch (Env.authServiceProvider) {
    case AuthServiceProvider.firebase:
      diContainer.registerFactory<AuthService>(
        () => FirebaseAuthService(),
      );
      break;
  }

  diContainer.registerFactory<Location>(
    () => Location(),
  );
}
