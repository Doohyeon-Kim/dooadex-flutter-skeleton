import 'package:dooadex_flutter_skeleton/components/text_fields/underline_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';

import 'outlined_text_field.dart';


class DateTextField extends StatefulWidget {
  const DateTextField({Key? key, required this.textFieldWidget})
      : super(key: key);

  final Widget textFieldWidget;

  factory DateTextField.dd({
    required TextEditingController textEditingController,
    String? errorText,
    double? width,
    TextStyle? errorStyle,
  }) = _DateTextFieldDD;

  factory DateTextField.yyyymmdd({
    required TextEditingController textEditingController,
    String? errorText,
    double? width,
    TextStyle? errorStyle,
  }) = _DateTextFieldYYYYMMDD;

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  @override
  Widget build(BuildContext context) {
    return widget.textFieldWidget;
  }
}

class _DateTextFieldDD extends DateTextField {
  _DateTextFieldDD({
    required TextEditingController textEditingController,
    String? errorText,
    TextStyle? errorStyle,
    double? width,
  }) : super(
          textFieldWidget: UnderlineTextField.suffixIcon(
            textEditingController: textEditingController,
            width: width ?? 128,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            maxLines: 1,
            maxLength: 2,
            suffix: Padding(
              padding: const EdgeInsets.fromLTRB(6, 30, 26, 10),
              child: Text(
                "일",
                style: DooadexTypo.body,
              ),
            ),
            textDirection: TextDirection.rtl,
            textStyle: DooadexTypo.largeTitle,
            errorText: errorText,
            errorStyle: errorStyle,
          ),
        );
}

class _DateTextFieldYYYYMMDD extends DateTextField {
  _DateTextFieldYYYYMMDD({
    required TextEditingController textEditingController,
    String? errorText,
    TextStyle? errorStyle,
    double? width,
  }) : super(
    textFieldWidget: OutlineTextField(
      textEditingController: textEditingController,
      width: width ?? 150,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      maxLines: 1,
      maxLength: 8,
      textStyle: DooadexTypo.headline,
      errorText: errorText,
      errorStyle: errorStyle,
      counterText: "",
      hintText: "YYYYMMDD",
      // hintStyle: ,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    ),
  );
}
