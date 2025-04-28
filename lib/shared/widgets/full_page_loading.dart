import 'package:flutter/material.dart';

class FullPageLoader extends StatelessWidget {
  const FullPageLoader({
    super.key,
    this.isLoading = false,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const color = Color.fromARGB(50, 0, 0, 0);
    return Stack(
      children: [
        child,
        if (isLoading) ...[
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcOver,
            ),
            child: const ModalBarrier(
              dismissible: false,
              color: color,
            ),
          ),
          Center(
            child: CircularProgressIndicator(
                // color: ColorConstants.pigeePrimaryBlue,
                ),
          ),
        ],
      ],
    );
  }
}
