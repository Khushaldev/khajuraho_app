import 'get_it.dart';
import 'localization.dart';

abstract class LaunchObjects {
  const LaunchObjects();

  Future<void> initialize();
  Future<void> dispose();
}

class StartupDependencies {
  // add your launch objects here
  static final List<LaunchObjects> launchObjects = [
    const InitLocalization(),
    const InitGetIt(),
  ];

  static Future<void> init() async {
    for (final launchObject in launchObjects) {
      await launchObject.initialize();
    }
  }

  static Future<void> dispose() async {
    for (final launchObject in launchObjects) {
      await launchObject.dispose();
    }
  }
}
