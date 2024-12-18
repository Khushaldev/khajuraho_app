// ignore: import_of_legacy_library_into_null_safe
import 'dart:ffi';

import 'package:ffi/ffi.dart' as ffi;
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class Log {
  Log() {
    _logger = Logger(
      printer: PrettyPrinter(),
      level: kDebugMode ? Level.trace : Level.info,
    );
  }

  static final shared = Log();
  // ignore: unused_field
  late Logger _logger;

  bool _enabled = false;

  static void enableFlutterLog() {
    shared._enabled = true;
  }

  // Generic internal logging function to reduce code duplication
  static void _log(
    Level level,
    int rustLevel,
    dynamic msg, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    if (shared._enabled) {
      switch (level) {
        case Level.info:
          shared._logger.i(msg, stackTrace: stackTrace);
          break;
        case Level.debug:
          shared._logger.d(msg, stackTrace: stackTrace);
          break;
        case Level.warning:
          shared._logger.w(msg, stackTrace: stackTrace);
          break;
        case Level.error:
          shared._logger.e(msg, stackTrace: stackTrace);
          break;
        case Level.trace:
          shared._logger.t(msg, stackTrace: stackTrace);
          break;
        default:
          shared._logger.log(level, msg, stackTrace: stackTrace);
      }
    }
    //ignore unused_local_variable
    // String formattedMessage = _formatMessageWithStackTrace(msg, stackTrace);
  }

  static void info(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    _log(Level.info, 0, msg, error, stackTrace);
  }

  static void debug(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    _log(Level.debug, 1, msg, error, stackTrace);
  }

  static void warn(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    _log(Level.warning, 3, msg, error, stackTrace);
  }

  static void trace(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    _log(Level.trace, 2, msg, error, stackTrace);
  }

  static void error(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    _log(Level.error, 4, msg, error, stackTrace);
  }
}

bool isReleaseVersion() {
  return kReleaseMode;
}

Pointer<ffi.Utf8> toNativeUtf8(dynamic msg) {
  return '$msg'.toNativeUtf8();
}

// ignore unused_method
// String _formatMessageWithStackTrace(dynamic msg, StackTrace? stackTrace) {
//   if (stackTrace != null) {
//     return '$msg\nStackTrace:\n$stackTrace'; // Append the stack trace to the message
//   }
//   return msg.toString();
// }
