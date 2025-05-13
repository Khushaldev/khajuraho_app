import 'package:flutter/material.dart';
import 'package:khajuraho/core/repositories/auth_repository.dart';
import 'package:khajuraho/core/services/api/auth_service.dart';
import 'package:khajuraho/core/services/dio/dio_service.dart';
import 'package:khajuraho/core/services/local_storage/local_storage_service.dart';
import 'package:khajuraho/di/di_container.dart';

import '../../core/app_config/env_configs.dart';
import 'global_objects.dart';

class InitGetIt implements LaunchObjects {
  const InitGetIt();

  @override
  Future<void> initialize() async {
    final HiveStorageService storage = HiveStorageService();
    await storage.init();

    final EnvironmentConfig envConfigs = await EnvironmentConfig.getConfig();

    final DioService dioService = DioService(envConfigs: envConfigs);

    final AuthService authService = AuthService(dioService);

    final AuthRepository authRepository = AuthRepository(authService);

    final diObjects = DIObjects(
      storage: storage,
      envConfigs: envConfigs,
      authService: authService,
      authRepository: authRepository,
    );

    getIt.registerLazySingleton<DIObjects>(() => diObjects);
  }

  @override
  Future<void> dispose() async {}
}

class DIObjects {
  DIObjects({
    required this.storage,
    required this.envConfigs,
    required this.authService,
    required this.authRepository,
  });

  // local storage
  final HiveStorageService storage;

  // configs
  final EnvironmentConfig envConfigs;

  // services
  final AuthService authService;

  // repositories
  final AuthRepository authRepository;
}

extension DIObjectsExtension on BuildContext {
  DIObjects get diObjects => getIt<DIObjects>();

  HiveStorageService get storage => diObjects.storage;

  EnvironmentConfig get envConfigs => diObjects.envConfigs;

  AuthRepository get authRepository => diObjects.authRepository;

  AuthService get authService => diObjects.authService;
}
