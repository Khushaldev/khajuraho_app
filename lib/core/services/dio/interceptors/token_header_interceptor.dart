// import 'package:dio/dio.dart';
// import 'package:stack_trace/stack_trace.dart';

// import '../../../../config/env_configs.dart';
// import '../../../../utils/jwt_decoder.dart';
// import '../../../../utils/type_def.dart';
// import '../../device_registration_service.dart';
// import '../../local_storage_service/local_storage_service.dart';

// class TokenHeaderInterceptor extends Interceptor {
//   TokenHeaderInterceptor(this.envConfigs, this.deviceService);

//   final EnvironmentConfig envConfigs;
//   final DeviceRegistrationService deviceService;

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     try {
//       await Chain.capture(
//         () async {
//           final headersData = await _prepareHeaders();
//           if (headersData.isNotEmpty) {
//             _addHeadersToRequest(options, headersData);
//           }
//         },
//         onError: (error, stackTrace) {
//           _handleError(error, stackTrace);
//         },
//       );
//       super.onRequest(options, handler);
//     } catch (e, stackTrace) {
//       _handleError(e, stackTrace);
//       handler.reject(
//         DioException(
//           requestOptions: options,
//           error: 'Failed to prepare headers: ${e.toString()}',
//           type: DioExceptionType.badResponse,
//         ),
//       );
//     }
//   }

//   Future<Json> _prepareHeaders() async {
//     final headersData = <String, dynamic>{};
//     AppCache? cache = LocalStorageService.cache;

//     if (cache == null || cache.registeredDeviceData == null) {
//       await deviceService.registerDevice();
//       cache = LocalStorageService.cache;
//     } else {
//       headersData['device_hash'] = cache.registeredDeviceData!.deviceHash;
//     }

//     final token = cache?.userData?.idToken ?? cache?.registeredDeviceData?.idToken;
//     final refreshToken = cache?.userData?.refreshToken ?? cache?.registeredDeviceData?.refreshToken;
//     final privateKey = cache?.userData?.privateKey ?? cache?.registeredDeviceData?.privateKey;
//     final deviceHash = cache?.registeredDeviceData?.deviceHash ?? '';
//     final userId = cache?.userData?.details.userId;

//     if (JwtDecoder.isExpired(token ?? '')) {
//       final newToken = await deviceService.getAccessToken(
//         deviceHash: deviceHash,
//         idToken: token ?? '',
//         refreshToken: refreshToken ?? '',
//         privateKey: privateKey ?? '',
//         userId: userId,
//       );
//       headersData['id_token'] = newToken?['id_token'];
//     } else {
//       headersData['id_token'] = token;
//     }

//     return headersData;
//   }

//   void _addHeadersToRequest(RequestOptions options, Json headersData) {
//     final authToken = headersData['id_token'];
//     final deviceHash = headersData['device_hash'];
//     if (authToken != null && deviceHash != null) {
//       options.headers.addAll({
//         'authorization': 'Bearer $authToken',
//         'device-hash': deviceHash,
//       });
//     }
//   }

//   void _handleError(Object error, StackTrace stackTrace) {
//     // Log or handle the error as needed
//   }
// }
