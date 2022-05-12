import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/controller/text/text_field_controller.dart';
import 'package:flutter/material.dart';

class DooadexTextField extends StatefulWidget {
  const DooadexTextField(
      {Key? key, required this.textFieldWidget})
      : super(key: key);

  final Widget textFieldWidget;

  factory DooadexTextField.underline(
      {required TextEditingController textEditingController,
        ValueChanged<String>? onChanged,
      double? width,
      String? hintText,
      TextStyle? textStyle}) = _UnderlineTextField;

  factory DooadexTextField.underlineWithSuffix(
      {required TextEditingController textEditingController,
        ValueChanged<String>? onChanged,
      required VoidCallback onPressed,

        FocusNode? focusNode,
      double? width,
      String? hintText,
      TextStyle? textStyle,
      Widget? suffix}) = _UnderlineWidthSuffixTextField;

  @override
  State<DooadexTextField> createState() => _DooadexTextFieldState();
}

class _DooadexTextFieldState extends State<DooadexTextField> {
  @override
  Widget build(BuildContext context) {
    return widget.textFieldWidget;
  }
}

class _UnderlineTextField extends DooadexTextField {
  _UnderlineTextField(
      {key,
      required TextEditingController textEditingController,
        ValueChanged<String>? onChanged,
      double? width,
      String? hintText,
      TextStyle? textStyle})
      : super(
          key: key,
          textFieldWidget: SizedBox(
            width: width ?? 328,
            child: TextField(
              onChanged: onChanged,
              controller: textEditingController,
              style: textStyle ?? DooadexTypo.headline,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: hintText,
                hintStyle:
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: const UnderlineInputBorder(),
                // isDense: true,
              ),
            ),
          ),
        );
}

class _UnderlineWidthSuffixTextField extends DooadexTextField {
  _UnderlineWidthSuffixTextField({
    key,required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    required VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    Widget? suffix,
  }) : super(
          key: key,
          textFieldWidget: SizedBox(
            width: width ?? 328,
            child: TextField(
              onChanged: onChanged,
              focusNode: focusNode,
              controller: textEditingController,
              style: textStyle ?? DooadexTypo.headline,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: hintText,
                hintStyle:
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: const UnderlineInputBorder(),
                suffix: suffix ??
                    DooadexButton.destructiveText(
                      onPressed: onPressed,
                      text: "add",
                      textStyle: DooadexTypo.subhead
                          .copyWith(color: DooadexColor.bilobaFlower),
                    ),
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        );
}
