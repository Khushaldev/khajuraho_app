import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:khajuraho/core/app_config/env_configs.dart';
import 'package:khajuraho/core/services/dio/exception_handler.dart';
import 'package:khajuraho/core/services/dio/interceptors/interceptors.dart';
import 'package:khajuraho/dto/result.dart';

typedef SerializerFunction<T> = T Function(Map<String, dynamic> data);

const timeOutDuration = Duration(seconds: 30);

class DioService {
  DioService({
    required EnvironmentConfig envConfigs,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: Uri.parse(envConfigs.baseUrl) //
                .replace(path: '/api')
                .toString(),
            connectTimeout: timeOutDuration,
            receiveTimeout: timeOutDuration,
          ),
        ) {
    _dio.interceptors.addAll([
      HeaderInterceptor(envConfigs),
      ExceptionInterceptor(),
    ]);
  }
  final Dio _dio;

  Dio get dio => _dio;

  final Map<Type, SerializerFunction<dynamic>> serializerFunctions =
      <Type, SerializerFunction<dynamic>>{};

  Future<Result<T, AppError>> get<T>(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode == 200) {
        final convertedObject = await _convertToBusinessObject<T>(
          response: response,
        );
        return success(convertedObject);
      }

      const error = 'An unexpected error occurred. Please try again.';
      return failure(AppError(error));
    } on DioException catch (error) {
      final errMessage = DioExceptionHandler.handleException(error: error);
      return failure(AppError(errMessage));
    } on JsonParsingException catch (e) {
      return failure(AppError(e.message));
    } catch (e, st) {
      if (kDebugMode) {
        return failure(AppError('Error: ${e.toString()} $st'));
      }
      const error = 'An unexpected error occurred. Please try again.';
      return failure(AppError(error));
    }
  }

  Future<Result<T, AppError>> post<T>(
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
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode == 200) {
        final convertedObject = await _convertToBusinessObject<T>(
          response: response,
        );
        return success(convertedObject);
      }

      const error = 'An unexpected error occurred. Please try again.';
      return failure(AppError(error));
    } on DioException catch (error) {
      final errMessage = DioExceptionHandler.handleException(error: error);
      return failure(AppError(errMessage));
    } on JsonParsingException catch (e) {
      if (kDebugMode) {
        return failure(AppError(e.message));
      }
      const error = 'An unexpected error occurred. Please try again.';
      return failure(AppError(error));
    } catch (e, st) {
      if (kDebugMode) {
        return failure(AppError('Error: ${e.toString()} $st'));
      }
      const error = 'An unexpected error occurred. Please try again.';
      return failure(AppError(error));
    }
  }

  Type typeOf<T>() => T;
  Future<T> _convertToBusinessObject<T>({
    required Response<dynamic> response,
  }) async {
    final responseData = response.data;
    if (responseData is Map) {
      final responseMap = Map<String, dynamic>.from(responseData);

      if (typeOf<T>() == typeOf<Map<String, dynamic>>()) {
        return responseData as T;
      } else if (serializerFunctions.containsKey(T)) {
        return serializerFunctions[T]?.call(responseMap) as T;
      }
    }
    throw JsonParsingException(
      'JSON parsing failed for type ${typeOf<T>()}',
    );
  }
}

class JsonParsingException implements Exception {
  JsonParsingException(this.message);
  final String message;

  @override
  String toString() => message;
}

class AppError {
  AppError(this.message);

  final String message;
}
