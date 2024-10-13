import 'package:flutter/material.dart';

Future<T?> bottomSheetHelper<T>(
  BuildContext context,
  WidgetBuilder builder,
) async {
  return await showModalBottomSheet<T>(
    context: context,
    builder: builder,
    useSafeArea: false,
    backgroundColor: Colors.white,
  );
}
