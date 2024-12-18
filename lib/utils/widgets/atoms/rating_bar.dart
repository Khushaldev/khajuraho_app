import 'package:flutter/material.dart';

enum UpdateRatingMode {
  tap,
  drag,
  tapAndDrag,
}

class RatingBar extends StatefulWidget {
  const RatingBar({
    super.key,
    this.itemBuilder,
    this.onRatingUpdate,
    this.allowHalfRating = false,
    this.unratedColor,
    this.ratedColor,
    this.size = 28.0,
    this.isDisabled = false,
    this.padding = EdgeInsets.zero,
    this.direction = Axis.horizontal,
    this.textDirection,
    this.itemCount = 5,
    this.initialRating = 0,
    this.minRatingAllowed = 0,
    this.maxRatingAllowed,
    this.updateRatingMode = UpdateRatingMode.tapAndDrag,
  });

  final IndexedWidgetBuilder? itemBuilder;
  final ValueChanged<double>? onRatingUpdate;
  final bool allowHalfRating;
  final Color? unratedColor;
  final Color? ratedColor;
  final double size;
  final bool isDisabled;
  final EdgeInsetsGeometry padding;
  final Axis direction;
  final TextDirection? textDirection;
  final int itemCount;
  final double initialRating;
  final double minRatingAllowed;
  final double? maxRatingAllowed;
  final UpdateRatingMode updateRatingMode;

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  late IndexedWidgetBuilder itemBuilder;

  double _rating = 0;
  bool _isRTL = false;
  double iconRating = 0;

  late double _minRating, _maxRating;

  @override
  void initState() {
    super.initState();
    _minRating = widget.minRatingAllowed;
    _maxRating = widget.maxRatingAllowed ?? widget.itemCount.toDouble();
    _rating = widget.initialRating;
    itemBuilder = widget.itemBuilder ??
        (context, _) => Icon(
              Icons.star,
              color: widget.ratedColor ?? const Color(0xFFFFC130),
            );
  }

  @override
  void didUpdateWidget(RatingBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialRating != widget.initialRating) {
      _rating = widget.initialRating;
    }
    _minRating = widget.minRatingAllowed;
    _maxRating = widget.maxRatingAllowed ?? widget.itemCount.toDouble();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textDirection = widget.textDirection ?? Directionality.of(context);
    _isRTL = textDirection == TextDirection.rtl;
    iconRating = 0.0;

    return Wrap(
      textDirection: textDirection,
      direction: widget.direction,
      children: List.generate(
        widget.itemCount,
        (index) => _buildRating(itemBuilder, index),
      ),
    );
  }

  Widget _buildRating(IndexedWidgetBuilder itemBuilder, int index) {
    final item = itemBuilder.call(context, index);
    final ratingOffset = widget.allowHalfRating ? 0.5 : 1.0;

    late Widget updatedRatingWidget;

    if (index >= _rating) {
      updatedRatingWidget = _NoRatingWidget(
        size: widget.size,
        unratedColor: widget.unratedColor ?? const Color(0xFFFFE182),
        child: item,
      );
    } else if (index >= _rating - ratingOffset && widget.allowHalfRating) {
      updatedRatingWidget = _HalfRatingWidget(
        size: widget.size,
        rtlMode: _isRTL,
        unratedColor: widget.unratedColor ?? const Color(0xFFFFE182),
        child: item,
      );
      iconRating += 0.5;
    } else {
      updatedRatingWidget = SizedBox(
        width: widget.size,
        height: widget.size,
        child: FittedBox(
          child: item,
        ),
      );
      iconRating += 1.0;
    }

    return IgnorePointer(
      ignoring: widget.isDisabled,
      child: GestureDetector(
        onTapDown: (details) {
          if (widget.updateRatingMode == UpdateRatingMode.drag) return;
          double value;
          if (index == 0 && (_rating == 1 || _rating == 0.5)) {
            value = 0;
          } else {
            final double tappedPosition = details.localPosition.dx;
            bool tappedOnFirstHalf = tappedPosition <= widget.size / 2;
            if (widget.textDirection != null && widget.textDirection == TextDirection.rtl) {
              tappedOnFirstHalf = !tappedOnFirstHalf;
            }
            value = index + (tappedOnFirstHalf && widget.allowHalfRating ? 0.5 : 1.0);
          }
          value = value
              .clamp(
                widget.minRatingAllowed,
                widget.maxRatingAllowed ?? widget.itemCount,
              )
              .toDouble();
          setState(() {
            _rating = value;
          });
          if (widget.onRatingUpdate != null) widget.onRatingUpdate!(value);
        },
        onHorizontalDragEnd: _isHorizontal ? _onDragEnd : null,
        onHorizontalDragUpdate: _isHorizontal ? _onDragUpdate : null,
        onVerticalDragEnd: _isHorizontal ? null : _onDragEnd,
        onVerticalDragUpdate: _isHorizontal ? null : _onDragUpdate,
        child: Padding(
          padding: widget.padding,
          child: updatedRatingWidget,
        ),
      ),
    );
  }

  bool get _isHorizontal => widget.direction == Axis.horizontal;

  void _onDragUpdate(DragUpdateDetails dragDetails) {
    if (widget.updateRatingMode != UpdateRatingMode.tap) {
      final box = context.findRenderObject() as RenderBox?;
      if (box == null) return;

      final pos = box.globalToLocal(dragDetails.globalPosition);
      double i;
      if (widget.direction == Axis.horizontal) {
        i = pos.dx / (widget.size + widget.padding.horizontal);
      } else {
        i = pos.dy / (widget.size + widget.padding.vertical);
      }
      var currentRating = widget.allowHalfRating ? i : i.round().toDouble();
      if (currentRating > widget.itemCount) {
        currentRating = widget.itemCount.toDouble();
      }
      if (currentRating < 0) {
        currentRating = 0.0;
      }
      if (_isRTL && widget.direction == Axis.horizontal) {
        currentRating = widget.itemCount - currentRating;
      }

      _rating = currentRating.clamp(_minRating, _maxRating);
      if (widget.onRatingUpdate != null) widget.onRatingUpdate!(iconRating);
      setState(() {});
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (widget.onRatingUpdate != null) widget.onRatingUpdate!(iconRating);
    iconRating = 0.0;
  }
}

class _HalfRatingWidget extends StatelessWidget {
  const _HalfRatingWidget({
    required this.size,
    required this.child,
    required this.rtlMode,
    required this.unratedColor,
  });

  final Widget child;
  final double size;
  final bool rtlMode;
  final Color unratedColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FittedBox(
            child: _NoRatingWidget(
              size: size,
              unratedColor: unratedColor,
              child: child,
            ),
          ),
          FittedBox(
            child: ClipRect(
              clipper: _HalfClipper(
                rtlMode: rtlMode,
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class _HalfClipper extends CustomClipper<Rect> {
  _HalfClipper({required this.rtlMode});

  final bool rtlMode;

  @override
  Rect getClip(Size size) => rtlMode
      ? Rect.fromLTRB(
          size.width / 2,
          0,
          size.width,
          size.height,
        )
      : Rect.fromLTRB(
          0,
          0,
          size.width / 2,
          size.height,
        );

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

class _NoRatingWidget extends StatelessWidget {
  const _NoRatingWidget({
    required this.size,
    required this.child,
    required this.unratedColor,
  });

  final double size;
  final Widget child;
  final Color unratedColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FittedBox(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            unratedColor,
            BlendMode.srcIn,
          ),
          child: child,
        ),
      ),
    );
  }
}
