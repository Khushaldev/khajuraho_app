import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../utils/type_def/map_type_def.dart';
import 'exception_handler.dart';
import 'interceptors/interceptors.dart';

typedef SerializerFunction<T> = T Function(Map<String, dynamic> data);

const timeOutDuration = Duration(seconds: 30);

extension on Response {
  bool get isOk =>
      statusCode != null && //
      statusCode! >= 200 &&
      statusCode! <= 299;
  bool get hasBody => isOk && data != null;
  Json get responseData => hasBody && data is Map //
      ? data as Json
      : <String, dynamic>{};
}

class DioService {
  DioService({
    required String baseUrl,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: Uri.parse(baseUrl) //
                .replace(path: '/api/v1')
                .toString(),
            connectTimeout: timeOutDuration,
            receiveTimeout: timeOutDuration,
          ),
        ) {
    _dio.interceptors.addAll([
      HeaderInterceptor(),
      ExceptionInterceptor(),
    ]);
  }
  final Dio _dio;

  Dio get dio => _dio;

  final Map<Type, SerializerFunction> serializerFunctions = <Type, SerializerFunction>{};

  Future<(T?, AppError?)> post<T>(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(
        uri,
        data: (data as Json),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      final convertedObject = await _convertToBusinessObject<T>(
        response: response,
      );

      return (convertedObject, null);
    } on DioException catch (error) {
      final errMessage = DioExceptionHandler.handleException(error: error);
      return (null, AppError(errMessage));
    } on JsonParsingException catch (e) {
      return (null, AppError(e.message));
    } catch (e, st) {
      if (kDebugMode) {
        return (null, AppError('Error: ${e.toString()} $st'));
      }
      return (
        null,
        AppError('We are unable to process your request at the moment. Please try again later.')
      );
    }
  }

  Type typeOf<T>() => T;
  Future<T> _convertToBusinessObject<T>({
    required Response response,
  }) async {
    final responseData = response.data;

    if (typeOf<T>() == typeOf<Json>()) {
      return responseData;
    } else if (typeOf<T>() == typeOf<List<Json>>()) {
      return List<Json>.from(responseData) as T;
    }

    if (serializerFunctions.containsKey(T)) {
      return serializerFunctions[T]?.call(responseData);
    }

    throw JsonParsingException('API: JSON parsing failed.');
  }
}

class JsonParsingException implements Exception {
  JsonParsingException(this.message);
  final String message;

  @override
  String toString() => message;
}

class InvalidKeyException implements Exception {
  InvalidKeyException(this.message);
  final String message;

  @override
  String toString() => message;
}

class AppError {
  final String message;
  AppError(this.message);
}
