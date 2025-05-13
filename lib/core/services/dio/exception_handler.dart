import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioExceptionHandler {
  static String handleException({required DioException error}) {
    String errorMessage = 'An unexpected error occurred. Please try again.';

    if (error.response != null) {
      final errorResponseData = error.response?.data;

      if (errorResponseData != null && errorResponseData is Map<String, dynamic>) {
        try {
          switch (error.response?.statusCode) {
            case 400:
              errorMessage = _handleBadRequest(errorResponseData);
              break;
            case 401:
              errorMessage = _handleUnauthorized(errorResponseData);
              break;
            case 500:
              errorMessage = _handleServerError(errorResponseData);
              break;
            default:
              errorMessage = error.response?.data['message'] as String? ??
                  errorResponseData['message'] as String? ??
                  'An error occurred.';
          }
        } catch (e, st) {
          if (kDebugMode) {
            errorMessage = '$errorMessage $e $st';
          }
        }
      }
    } else if (error.type == DioExceptionType.connectionTimeout) {
      errorMessage = 'Connection timeout. Please check your internet connection.';
    } else if (error.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Receive timeout. Please try again later.';
    } else if (error.error is SocketException) {
      errorMessage = 'No internet connection. Please check your network.';
    } else {
      errorMessage = 'Something went wrong. Please try again.';
    }

    return errorMessage;
  }

  static String _handleBadRequest(Map<String, dynamic> data) {
    if (data['errors'] != null && data['errors'] is List && (data['errors'] as List).isNotEmpty) {
      return (data['errors'] as List).join(', ');
    } else if (data['message'] != null) {
      return data['message'] as String;
    } else {
      return 'Invalid request. Please check your input.';
    }
  }

  static String _handleUnauthorized(Map<String, dynamic> data) {
    if (data['message'] != null) {
      return data['message'] as String;
    }
    return 'Unauthorized access. Please login again.';
  }

  static String _handleServerError(Map<String, dynamic> data) {
    if (data['message'] != null) {
      return data['message'] as String;
    }
    return 'Internal server error. Please try again later.';
  }
}
