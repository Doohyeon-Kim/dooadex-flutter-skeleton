import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/dooadex_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

class UnderlineTextField extends DooadexTextField {
  UnderlineTextField({
    Key? key,
    required TextEditingController textEditingController,
    InputDecoration? inputDecoration,
    ValueChanged<String>? onChanged,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    TextDirection? textDirection,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
          key: key,
          inputDecoration: inputDecoration ??
              InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: hintText,
                hintStyle:
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: const UnderlineInputBorder(),
                counterText: counterText ?? "",
                // isDense: true,
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
          maxLength: maxLength,
          maxLines: maxLines,
          keyboardType: keyboardType,
          textDirection: textDirection,
        );

  factory UnderlineTextField.suffix({
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    Widget? suffix,
    TextDirection? textDirection,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
  }) = _UnderlineSuffixTextField;

  factory UnderlineTextField.suffixIcon({
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    TextDirection? textDirection,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
  }) = _UnderlineSuffixIconTextField;
}

class _UnderlineSuffixTextField extends UnderlineTextField {
  _UnderlineSuffixTextField({
    key,
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback? onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    TextDirection? textDirection,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          hintText: hintText,
          textStyle: textStyle,
          maxLength: maxLength,
          maxLines: maxLines,
          keyboardType: keyboardType,
          inputDecoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: hintText,
            hintStyle: DooadexTypo.headline.copyWith(color: DooadexColor.gray),
            focusedBorder: const UnderlineInputBorder(),
            suffix: suffix ??
                DooadexButton.destructiveText(
                  onPressed: onPressed ?? () {},
                  text: "add",
                  textStyle: DooadexTypo.subhead
                      .copyWith(color: DooadexColor.bilobaFlower),
                ),
            isDense: true,
            contentPadding: contentPadding ?? EdgeInsets.zero,
            counterText: counterText ?? "",
            errorText: errorText,
            errorBorder: errorBorder,
            errorStyle: errorStyle,
          ),
          textDirection: textDirection,
        );
}

class _UnderlineSuffixIconTextField extends UnderlineTextField {
  _UnderlineSuffixIconTextField({
    key,
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback? onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    Widget? suffix,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
    String? counterText,
    TextDirection? textDirection,
    String? errorText,
    InputBorder? errorBorder,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          hintText: hintText,
          textStyle: textStyle,
          maxLength: maxLength,
          maxLines: maxLines,
          keyboardType: keyboardType,
          inputDecoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: hintText,
            hintStyle: DooadexTypo.headline.copyWith(color: DooadexColor.gray),
            focusedBorder: const UnderlineInputBorder(),
            suffixIcon: suffix ??
                DooadexButton.destructiveText(
                  onPressed: onPressed ?? () {},
                  text: "add",
                  textStyle: DooadexTypo.subhead
                      .copyWith(color: DooadexColor.bilobaFlower),
                ),
            isDense: true,
            contentPadding: contentPadding ?? EdgeInsets.zero,
            counterText: counterText ?? "",
            errorText: errorText,
            errorBorder: errorBorder,
            errorStyle: errorStyle,
          ),
          textDirection: textDirection,
        );
}
