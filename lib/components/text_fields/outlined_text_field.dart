import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

import 'dooadex_text_field.dart';

class OutlineTextField extends DooadexTextField {
  OutlineTextField({
    Key? key,
    required TextEditingController textEditingController,
    InputDecoration? inputDecoration,
    ValueChanged<String>? onChanged,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
          key: key,
          inputDecoration: inputDecoration ??
              InputDecoration(
                border: const OutlineInputBorder(),
                hintText: hintText,
                hintStyle: hintStyle ??
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: const OutlineInputBorder(),
                counterText: counterText ?? "",
                isDense: true,
                errorText: errorText,
                errorBorder: errorBorder,
                errorStyle: errorStyle,
                contentPadding: contentPadding,
              ),
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          textStyle: textStyle,
          suffix: suffix,
          maxLength: maxLength,
          maxLines: maxLines,
          keyboardType: keyboardType,
          textDirection: textDirection,
    textAlign: textAlign,
        );

  factory OutlineTextField.suffix({
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    required VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? errorText,
    InputBorder? errorBorder,
    String? counterText,
    TextDirection? textDirection,
    TextStyle? errorStyle,
    TextAlign? textAlign,
    EdgeInsetsGeometry? contentPadding,
  }) = _OutlineSuffixTextField;
}

class _OutlineSuffixTextField extends OutlineTextField {
  _OutlineSuffixTextField({
    key,
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    required VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? errorText,
    InputBorder? errorBorder,
    String? counterText,
    TextStyle? errorStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          maxLength: maxLength,
          maxLines: maxLines,
          keyboardType: keyboardType,
          hintText: hintText,
          textStyle: textStyle,
          textDirection: textDirection,
    textAlign: textAlign,
          inputDecoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: hintStyle ?? DooadexTypo.headline.copyWith(color: DooadexColor.gray),
            focusedBorder: const OutlineInputBorder(),
            counterText: counterText ?? "",
            contentPadding: contentPadding,
            suffix: suffix ??
                Container(
                  height: 18,
                  width: 40,
                  alignment: Alignment.center,
                  child: DooadexButton.destructiveText(
                    onPressed: onPressed,
                    text: "add",
                    textStyle: DooadexTypo.subhead
                        .copyWith(color: DooadexColor.bilobaFlower),
                    padding: EdgeInsets.zero,
                  ),
                ),
            isDense: true,
            errorText: errorText,
            errorBorder: errorBorder,
            errorStyle: errorStyle,
          ),
        );
}
