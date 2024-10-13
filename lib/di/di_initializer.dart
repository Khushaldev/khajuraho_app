import 'package:client_app/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
GetIt initDI(GetIt getIt, String environment) {
  return getIt.init(environment: environment);
}
