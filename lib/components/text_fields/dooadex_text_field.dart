import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

class DooadexTextField extends StatefulWidget {
  const DooadexTextField({
    Key? key,
    required this.textEditingController,
    required this.inputDecoration,
    this.onChanged,
    this.onPressed,
    this.focusNode,
    this.width,
    this.hintText,
    this.textStyle,
    this.suffix,
    this.maxLength,
    this.maxLines,
    this.keyboardType,
    this.textDirection,
    this.textAlign,
  }) : super(key: key);

  final InputDecoration inputDecoration;
  final TextEditingController textEditingController;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onPressed;
  final FocusNode? focusNode;
  final double? width;
  final String? hintText;
  final TextStyle? textStyle;
  final Widget? suffix;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextDirection? textDirection;
  final TextAlign? textAlign;


  @override
  State<DooadexTextField> createState() => _DooadexTextFieldState();
}

class _DooadexTextFieldState extends State<DooadexTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 328,
      child: TextField(
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        focusNode: widget.focusNode,
        controller: widget.textEditingController,
        style: widget.textStyle ?? DooadexTypo.headline,
        decoration: widget.inputDecoration,
        keyboardType: widget.keyboardType,
        textDirection: widget.textDirection,
        textAlign: widget.textAlign ?? TextAlign.start,
      ),
    );
  }
}
