import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';

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

  factory DooadexButton.destructiveText(
      {Key? key,
      required VoidCallback onPressed,
      required String text,
      Size? size,
      Color? color,
      TextStyle? textStyle,
      EdgeInsetsGeometry? padding}) = _DestructiveTextButton;

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
  _ConvexButton({
    Key? key,
    required VoidCallback onPressed,
    Widget? child,
    Widget? onPressedChild,
    Size? size,
    Color? color,
    Color? tappedColor,
    double? circular,
    EdgeInsetsGeometry? padding,
    bool hasBeenPressed = false,
  }) : super(
          key: key,
          buttonWidget: StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                onTapDown: (TapDownDetails tapped) {
                  hasBeenPressed = true;
                  state(() {});
                },
                onTapUp: (TapUpDetails tapped) {
                  hasBeenPressed = false;
                  state(() {});
                  onPressed.call();
                },
                child: Container(
                  width: size?.width,
                  height: size?.height,
                  decoration: BoxDecoration(
                    color: hasBeenPressed == false
                        ? color ?? DooadexColor.primary
                        : tappedColor ?? DooadexColor.deepPurple,
                    borderRadius: BorderRadius.circular(circular ?? 4.0),
                  ),
                  child: Padding(
                    padding: padding ?? const EdgeInsets.all(12.0),
                    child: hasBeenPressed == false ? child : onPressedChild,
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
            style: ElevatedButton.styleFrom(
              minimumSize: size,
              primary: color,
              onPrimary: textColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
            child: child,
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
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: color ?? DooadexColor.primary,
              primary: textColor ?? Colors.white,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
            child: child,
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
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: color ?? DooadexColor.bilobaFlower,
              // backgroundColor: color ?? DooadexColor.primary.withOpacity(0.5),
              primary: textColor ?? Colors.black87,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
            child: child,
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
            style: OutlinedButton.styleFrom(
              minimumSize: size,
              backgroundColor: backgroundColor,
              primary: textColor,
              textStyle: textStyle,
              padding: padding,
              side: borderSide,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
            child: child,
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
            style: TextButton.styleFrom(
              minimumSize: size,
              backgroundColor: backgroundColor,
              primary: textColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular ?? 4.0)),
            ),
            child: child,
          ),
        );
}

class _DestructiveTextButton extends DooadexButton {
  _DestructiveTextButton(
      {Key? key,
      required VoidCallback onPressed,
      required String text,
      Size? size,
      Color? color,
      TextStyle? textStyle,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              minimumSize: size,
              padding: padding,
            ),
            child: Text(
              text,
              style: textStyle ??
                  DooadexTypo.body.copyWith(
                    color: color ?? DooadexColor.primary,
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
            color: color ?? DooadexColor.primary,
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
            backgroundColor: backgroundColor,
            child: child,
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
