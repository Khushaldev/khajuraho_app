import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment {
  dev,
  prod,
  noEnv;

  bool get isDev => this == AppEnvironment.dev;
  bool get isProd => this == AppEnvironment.prod;
}

class EnvironmentConfig {
  const EnvironmentConfig({
    required this.baseUrl,
    required this.clientKey,
    required this.clientSecret,
    required this.environment,
  });

  final String baseUrl;
  final String clientKey;
  final String clientSecret;
  final AppEnvironment environment;

  static Future<EnvironmentConfig> getConfig() async {
    const envPath = String.fromEnvironment('ENV_PATH');
    await dotenv.load(fileName: envPath);
    final json = dotenv.env;

    return EnvironmentConfig(
      baseUrl: json['base_url'] ?? '',
      clientKey: json['client_key'] ?? '',
      clientSecret: json['client_secret'] ?? '',
      environment: _mapEnvEnum(json['environment']),
    );
  }

  static AppEnvironment _mapEnvEnum(String? env) {
    switch (env) {
      case 'dev':
        return AppEnvironment.dev;
      case 'prod':
        return AppEnvironment.prod;
      default:
        return AppEnvironment.noEnv;
    }
  }
}
