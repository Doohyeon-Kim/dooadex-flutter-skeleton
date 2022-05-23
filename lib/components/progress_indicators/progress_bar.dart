import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, this.color, this.backgroundColor, this.linearProgressIndicator}) : super(key: key);

  final Color? color;
  final Color? backgroundColor;

  final Widget? linearProgressIndicator;

  factory ProgressBar.determinate({
    Color? color,
    Color? backgroundColor,
    required double progress,
  }) = _DeterminateProgressBar;

  @override
  Widget build(BuildContext context) {
    return linearProgressIndicator ??
        LinearProgressIndicator(
          color: color ?? DooadexColor.green,
          backgroundColor: backgroundColor ?? DooadexColor.ashGray,
        );
  }
}

class _DeterminateProgressBar extends ProgressBar {
  _DeterminateProgressBar({
    Color? color,
    Color? backgroundColor,
    required double progress,
  }) : super(
          linearProgressIndicator: LinearProgressIndicator(
            color: color ?? DooadexColor.green,
            backgroundColor: backgroundColor ?? DooadexColor.ashGray,
            value: progress,
          ),
        );
}
