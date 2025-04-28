import 'package:khajuraho/core/repositories/auth_repository.dart';
import 'package:khajuraho/core/services/api/auth_service.dart';
import 'package:khajuraho/core/services/dio/dio_service.dart';
import 'package:khajuraho/di/di_container.dart';

import 'global_objects.dart';

class InitGetIt implements LaunchObjects {
  const InitGetIt();

  @override
  Future<void> initialize() async {
    final DioService dioService = DioService(baseUrl: 'http://10.0.2.2:5001');

    final AuthService authService = AuthService(dioService);

    final AuthRepository authRepository = AuthRepository(authService);

    final diObjects = DIObjects(
      authService: authService,
      authRepository: authRepository,
    );

    di.registerLazySingleton<DIObjects>(() => diObjects);
  }

  @override
  Future<void> dispose() async {}
}

class DIObjects {
  DIObjects({required this.authService, required this.authRepository});

  // services
  final AuthService authService;

  // repositories
  final AuthRepository authRepository;
}
