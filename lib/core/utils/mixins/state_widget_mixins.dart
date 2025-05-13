import 'package:flutter/material.dart';

mixin StatefulMixin<T extends StatefulWidget, StatelessWidget> on State<T> {
  void mutate(VoidCallback action) {
    if (mounted) {
      setState(action);
    }
  }
}
