import 'package:flutter/material.dart';

import '../../configs/palette.dart';

class DooadexButton extends StatefulWidget {
  const DooadexButton({
    Key? key,
    required this.buttonWidget,
  }) : super(key: key);

  final Widget buttonWidget;

  factory DooadexButton.convex(
      {required VoidCallback onPressed,
      Size? size,
      Color? color,
      Color? tappedColor,
      Widget? child,
      Widget? onPressedChild,
      double? circular,
      EdgeInsetsGeometry? padding}) = _ConvexButton;

  factory DooadexButton.elevated(
      {required VoidCallback onPressed,
      Widget? child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = _ElevatedButton;

  factory DooadexButton.filled(
      {required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = _FilledButton;

  factory DooadexButton.filledTonal(
      {required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = _FilledTonalButton;

  factory DooadexButton.outlined(
      {required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? textColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = _OutlinedButton;

  factory DooadexButton.text(
      {required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? textColor,
      Color? backgroundColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = _TextButton;

  factory DooadexButton.destructiveText({
    Key? key,
    required VoidCallback onPressed,
    required String text,
    Color? color,
    TextStyle? textStyle,
  }) = _DestructiveTextButton;

  factory DooadexButton.icon({
    required VoidCallback onPressed,
    required Widget icon,
    Color? color,
    double? splashRadius,
  }) = _IconButton;

  factory DooadexButton.fab({
    required VoidCallback onPressed,
    required Widget child,
    Color? backgroundColor,
  }) = _FAB;

  factory DooadexButton.expandedFAB({
    required VoidCallback onPressed,
    required Widget label,
    Widget? icon,
    Color? backgroundColor,
  }) = _ExpandedFAB;

  @override
  State<DooadexButton> createState() => _DooadexButtonState();
}

class _DooadexButtonState extends State<DooadexButton> {
  @override
  Widget build(BuildContext context) {
    return widget.buttonWidget;
  }
}

class _ConvexButton extends DooadexButton {
  static bool _hasBeenPressed = false;

  _ConvexButton(
      {Key? key,
      required VoidCallback onPressed,
      Widget? child,
      Widget? onPressedChild,
      Size? size,
      Color? color,
      Color? tappedColor,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                onTapDown: (TapDownDetails tapped) {
                  _hasBeenPressed = true;
                  state(() {});
                },
                onTapUp: (TapUpDetails tapped) {
                  _hasBeenPressed = false;
                  state(() {});
                  onPressed.call();
                },
                child: Container(
                  width: size?.width,
                  height: size?.height,
                  decoration: BoxDecoration(
                    color: _hasBeenPressed == false
                        ? color ?? DooadexColor.tonalGreen
                        : tappedColor ?? DooadexColor.green,
                    borderRadius: BorderRadius.circular(circular ?? 4.0),
                  ),
                  child: Padding(
                    padding: padding ?? const EdgeInsets.all(12.0),
                    child: _hasBeenPressed == false ? child : onPressedChild,
                  ),
                ),
              );
            },
          ),
        );
}

class _ElevatedButton extends DooadexButton {
  _ElevatedButton(
      {Key? key,
      required VoidCallback onPressed,
      Widget? child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: ElevatedButton(
            onPressed: onPressed,
            child: child,
            style: ElevatedButton.styleFrom(
              minimumSize: size,
              primary: color ?? DooadexColor.green,
              onPrimary: textColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
          ),
        );
}

class _FilledButton extends DooadexButton {
  _FilledButton(
      {Key? key,
      required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            child: child,
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: color ?? DooadexColor.green,
              primary: textColor ?? Colors.white,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
          ),
        );
}

class _FilledTonalButton extends DooadexButton {
  _FilledTonalButton(
      {Key? key,
      required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? color,
      Color? textColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            child: child,
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: color ?? DooadexColor.tonalGreen,
              primary: textColor ?? Colors.black87,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
          ),
        );
}

class _OutlinedButton extends DooadexButton {
  _OutlinedButton(
      {Key? key,
      required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? textColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            child: child,
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: backgroundColor,
              primary: textColor ?? DooadexColor.green,
              textStyle: textStyle,
              padding: padding,
              side: borderSide,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
          ),
        );
}

class _TextButton extends DooadexButton {
  _TextButton(
      {Key? key,
      required VoidCallback onPressed,
      required Widget child,
      Size? size,
      Color? textColor,
      Color? backgroundColor,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: TextButton(
            onPressed: onPressed,
            child: child,
            style: TextButton.styleFrom(
              minimumSize: size,
              backgroundColor: backgroundColor,
              primary: textColor ?? DooadexColor.green,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
          ),
        );
}

class _DestructiveTextButton extends DooadexButton {
  _DestructiveTextButton({
    Key? key,
    required VoidCallback onPressed,
    required String text,
    Color? color,
    TextStyle? textStyle,
  }) : super(
          key: key,
          buttonWidget: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: textStyle ??
                  Typo.body.copyWith(
                    color: color ?? DooadexColor.red,
                  ),
            ),
          ),
        );
}

class _IconButton extends DooadexButton {
  _IconButton({
    Key? key,
    required VoidCallback onPressed,
    required Widget icon,
    Color? color,
    double? splashRadius,
  }) : super(
          key: key,
          buttonWidget: IconButton(
            splashRadius: splashRadius,
            icon: icon,
            onPressed: onPressed,
            color: color,
          ),
        );
}

class _FAB extends DooadexButton {
  _FAB({
    Key? key,
    required VoidCallback onPressed,
    required Widget child,
    Color? backgroundColor,
  }) : super(
          key: key,
          buttonWidget: FloatingActionButton(
            heroTag: "FAB",
            onPressed: onPressed,
            child: child,
            backgroundColor: backgroundColor,
          ),
        );
}

class _ExpandedFAB extends DooadexButton {
  _ExpandedFAB({
    Key? key,
    required VoidCallback onPressed,
    required Widget label,
    Widget? icon,
    Color? backgroundColor,
  }) : super(
          key: key,
          buttonWidget: FloatingActionButton.extended(
            heroTag: 'FAB_EXTENDED',
            onPressed: onPressed,
            icon: icon,
            label: label,
            backgroundColor: backgroundColor,
          ),
        );
}
