// import 'dart:io';

// import 'package:dio/dio.dart';

// import '../../../../core/helpers/version_helper.dart';

// class UserAgentInterceptor extends Interceptor {
//   UserAgentInterceptor();

//   String get platformName {
//     if (Platform.isAndroid) {
//       return 'Android';
//     } else if (Platform.isIOS) {
//       return 'iOS';
//     } else {
//       return 'unknown';
//     }
//   }

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     final String dartVersion = await VersionHelper.getDartVersion();

//     options.headers['User-Agent'] = 'PigeeAI app $platformName Dart - $dartVersion';

//     return super.onRequest(options, handler);
//   }
// }
