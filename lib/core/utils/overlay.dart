import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../theme/colors.dart';

class AppOverlay {
  static void showSnackbar(
    String message,
    BuildContext context, {
    Duration duration = const Duration(seconds: 2),
    Color backgroundColor = AppColors.primaryMedium,
  }) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          duration: duration,
          backgroundColor: backgroundColor,
        ),
      );
    }
  }

  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: AppColors.primaryMedium,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
