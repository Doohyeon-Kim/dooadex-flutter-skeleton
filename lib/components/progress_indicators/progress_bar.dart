import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, this.color, this.backgroundColor, this.linearProgressIndicator, this.height}) : super(key: key);

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
          color: color ?? DooadexColor.green,
          backgroundColor: backgroundColor ?? DooadexColor.ashGray,
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
            color: color ?? DooadexColor.green,
            backgroundColor: backgroundColor ?? DooadexColor.ashGray,
            value: progress,
            minHeight: height,
          ),
        );
}
