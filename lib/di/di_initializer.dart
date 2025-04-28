import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:khajuraho/di/di_initializer.config.dart';

@InjectableInit()
Future<GetIt> initDI(GetIt getIt, String environment) async {
  return getIt.init(environment: environment);
}
