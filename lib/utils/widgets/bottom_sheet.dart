import 'package:client_app/utils/helpers/colors.dart';
import 'package:flutter/material.dart';

Future<T?> bottomSheetHelper<T>(
  BuildContext context,
  WidgetBuilder builder, {
  Color backgroundColor = whiteColor,
}) async {
  final modalSheet = await showModalBottomSheet<T>(
    context: context,
    builder: builder,
    backgroundColor: backgroundColor,
  );

  return modalSheet;
}
