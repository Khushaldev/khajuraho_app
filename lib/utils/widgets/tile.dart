import 'package:client_app/utils/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:client_app/utils/helpers/styles.dart';

class AppTile extends StatefulWidget {
  const AppTile({
    super.key,
    required this.title,
    required this.child,
    this.spacing = emptyWidget,
    this.titleSpacing = emptyWidget,
    this.cardColor,
    this.horizontalPadding,
  });

  final String title;
  final Widget child;
  final SizedBox spacing;
  final SizedBox titleSpacing;
  final Color? cardColor;
  final EdgeInsets? horizontalPadding;

  @override
  State<AppTile> createState() => _AppTileState();
}

class _AppTileState extends State<AppTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.horizontalPadding != null
          ? topPadding8 + horizontalPadding12
          : topPadding8 + horizontalPadding24,
      child: Container(
        padding: widget.horizontalPadding,
        color: widget.cardColor == null ? Colors.transparent : Colors.white,
        child: Column(
          children: [
            widget.titleSpacing,
            Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyles.semiBold2,
                ),
              ],
            ),
            widget.spacing,
            widget.child,
          ],
        ),
      ),
    );
  }
}
