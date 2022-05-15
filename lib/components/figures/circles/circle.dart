import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key, this.width, this.height, this.color, this.padding})
      : super(key: key);

  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(6.0),
      child: Container(
        width: width ?? 10,
        height: height ?? 10,
        decoration: BoxDecoration(
          color: color ?? Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
