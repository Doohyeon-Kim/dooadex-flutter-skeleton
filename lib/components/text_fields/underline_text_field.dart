import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/dooadex_textfield.dart';
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
  }) : super(
          key: key,
          inputDecoration: inputDecoration ??
              InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: hintText,
                hintStyle:
                    DooadexTypo.headline.copyWith(color: DooadexColor.gray),
                focusedBorder: const UnderlineInputBorder(),
                // isDense: true,
              ),
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          textStyle: textStyle,
        );

  factory UnderlineTextField.suffix(
      {required TextEditingController textEditingController,
      ValueChanged<String>? onChanged,
      required VoidCallback onPressed,
      FocusNode? focusNode,
      double? width,
      String? hintText,
      TextStyle? textStyle,
      Widget? suffix}) = _UnderlineSuffixTextField;
}

class _UnderlineSuffixTextField extends UnderlineTextField {
  _UnderlineSuffixTextField({
    key,
    required TextEditingController textEditingController,
    ValueChanged<String>? onChanged,
    required VoidCallback onPressed,
    FocusNode? focusNode,
    double? width,
    String? hintText,
    TextStyle? textStyle,
    Widget? suffix,
  }) : super(
          key: key,
          textEditingController: textEditingController,
          onChanged: onChanged,
          focusNode: focusNode,
          width: width,
          hintText: hintText,
          textStyle: textStyle,
          inputDecoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: hintText,
            hintStyle: DooadexTypo.headline.copyWith(color: DooadexColor.gray),
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

          // key: key,
          // textEditingController: textEditingController,
          // underlineTextFieldWidget: SizedBox(
          //   width: width ?? 328,
          //   child: TextField(
          //     onChanged: onChanged,
          //     focusNode: focusNode,
          //     controller: textEditingController,
          //     style: textStyle ?? DooadexTypo.headline,
          //     decoration: InputDecoration(
          //       border: const UnderlineInputBorder(),
          //       hintText: hintText,
          //       hintStyle:
          //           DooadexTypo.headline.copyWith(color: DooadexColor.gray),
          //       focusedBorder: const UnderlineInputBorder(),
          //       suffix: suffix ??
          //           DooadexButton.destructiveText(
          //             onPressed: onPressed,
          //             text: "add",
          //             textStyle: DooadexTypo.subhead
          //                 .copyWith(color: DooadexColor.bilobaFlower),
          //           ),
          //       isDense: true,
          //       contentPadding: EdgeInsets.zero,
          //     ),
          //   ),
          // ),
        );
}
