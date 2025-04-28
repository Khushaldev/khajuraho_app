import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      {
        'Content-Type': 'application/json',
        'go_backend_secret_key': 'z8:Agi#bw&L980LPd*hU_Hy%QBG0!b0c'
      },
    );
    super.onRequest(options, handler);
  }
}
