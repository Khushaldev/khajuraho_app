import 'package:easy_localization/easy_localization.dart';
import 'package:khajuraho/di/startup/global_objects.dart';

class InitLocalization implements LaunchObjects {
  const InitLocalization();

  @override
  Future<void> initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableBuildModes = [];
  }

  @override
  Future<void> dispose() async {}
}
