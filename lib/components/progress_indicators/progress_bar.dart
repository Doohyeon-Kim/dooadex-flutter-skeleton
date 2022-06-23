import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {Key? key,
      this.color,
      this.backgroundColor,
      this.linearProgressIndicator,
      this.height})
      : super(key: key);

  final Color? color;
  final Color? backgroundColor;
  final double? height;

  final Widget? linearProgressIndicator;

  factory ProgressBar.determinate({
    Color? color,
    Color? backgroundColor,
    required double progress,
    double? height,
  }) = _DeterminateProgressBar;

  @override
  Widget build(BuildContext context) {
    return linearProgressIndicator ??
        LinearProgressIndicator(
          color: color,
          backgroundColor: backgroundColor ?? DooadexColor.bilobaFlower,
          minHeight: height,
        );
  }
}

class _DeterminateProgressBar extends ProgressBar {
  _DeterminateProgressBar({
    Color? color,
    Color? backgroundColor,
    required double progress,
    double? height,
  }) : super(
          linearProgressIndicator: LinearProgressIndicator(
            color: color,
            backgroundColor: backgroundColor ?? DooadexColor.bilobaFlower,
            value: progress,
            minHeight: height,
          ),
        );
}
