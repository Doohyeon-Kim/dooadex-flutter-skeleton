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
    InputBorder? border,
    InputBorder? focusedBorder,
  }) : super(
          key: key,
          inputDecoration: inputDecoration ??
              InputDecoration(
                border: border ?? const OutlineInputBorder(),
                hintText: hintText,
                hintStyle: hintStyle ??
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: focusedBorder ?? const OutlineInputBorder(),
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
          maxLines: maxLines ?? 1,
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
    InputBorder? border,
    InputBorder? focusedBorder,
  }) = _OutlineSuffixTextField;

  factory OutlineTextField.singleChar({
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    TextStyle? hintStyle,
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
    InputBorder? border,
    InputBorder? focusedBorder,
  }) = _OutlineSingleTextField;
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
    InputBorder? border,
    InputBorder? focusedBorder,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          maxLength: maxLength,
          maxLines: maxLines ?? 1,
          keyboardType: keyboardType,
          textDirection: textDirection,
          textAlign: textAlign,
          inputDecoration: InputDecoration(
            border: border ?? const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: hintStyle ??
                DooadexTypo.headline.copyWith(color: DooadexColor.gray),
            focusedBorder: focusedBorder ?? const OutlineInputBorder(),
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

class _OutlineSingleTextField extends OutlineTextField {
  _OutlineSingleTextField({
    key,
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    TextStyle? hintStyle,
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
    InputBorder? border,
    InputBorder? focusedBorder,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width ?? 40,
          maxLength: maxLength ?? 1,
          maxLines: maxLines ?? 1,
          keyboardType: keyboardType,
          textDirection: textDirection,
          textAlign: textAlign ?? TextAlign.center,
          inputDecoration: InputDecoration(
            border: border ?? const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: hintStyle ??
                DooadexTypo.headline.copyWith(color: DooadexColor.gray),
            focusedBorder: focusedBorder ?? const OutlineInputBorder(),
            counterText: counterText ?? "",
            contentPadding: contentPadding,
            isDense: true,
            errorText: errorText,
            errorBorder: errorBorder,
            errorStyle: errorStyle,
          ),
        );
}