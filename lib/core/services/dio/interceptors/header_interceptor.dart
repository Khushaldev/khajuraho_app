import 'package:dio/dio.dart';

import '../../../app_config/env_configs.dart';

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor(this.envConfigs);

  final EnvironmentConfig envConfigs;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      {
        'Content-Type': 'application/json',
        envConfigs.clientKey: envConfigs.clientSecret,
      },
    );
    super.onRequest(options, handler);
  }
}
