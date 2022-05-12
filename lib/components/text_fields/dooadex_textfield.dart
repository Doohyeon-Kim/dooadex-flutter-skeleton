import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
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

  @override
  State<DooadexTextField> createState() => _DooadexTextFieldState();
}

class _DooadexTextFieldState extends State<DooadexTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 328,
      child: TextField(
        onChanged: widget.onChanged,
        focusNode: widget.focusNode,
        controller: widget.textEditingController,
        style: widget.textStyle ?? DooadexTypo.headline,
        decoration: widget.inputDecoration,
      ),
    );
  }
}

// import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
// import 'package:dooadex_flutter_skeleton/configs/palette.dart';
// import 'package:flutter/material.dart';
//
// class DooadexTextField extends StatefulWidget {
//   const DooadexTextField({Key? key, required this.textFieldWidget})
//       : super(key: key);
//
//   final Widget textFieldWidget;
//
//   factory DooadexTextField.underline(
//       {required TextEditingController textEditingController,
//       ValueChanged<String>? onChanged,
//       FocusNode? focusNode,
//       double? width,
//       String? hintText,
//       TextStyle? textStyle}) = _UnderlineTextField;
//
//   factory DooadexTextField.underlineWithSuffix(
//       {required TextEditingController textEditingController,
//       ValueChanged<String>? onChanged,
//       required VoidCallback onPressed,
//       FocusNode? focusNode,
//       double? width,
//       String? hintText,
//       TextStyle? textStyle,
//       Widget? suffix}) = _UnderlineWidthSuffixTextField;
//
//   @override
//   State<DooadexTextField> createState() => _DooadexTextFieldState();
// }
//
// class _DooadexTextFieldState extends State<DooadexTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.textFieldWidget;
//   }
// }
//
// class _UnderlineTextField extends DooadexTextField {
//   _UnderlineTextField(
//       {key,
//       required TextEditingController textEditingController,
//       ValueChanged<String>? onChanged,
//       FocusNode? focusNode,
//       double? width,
//       String? hintText,
//       TextStyle? textStyle})
//       : super(
//           key: key,
//           textFieldWidget: SizedBox(
//             width: width ?? 328,
//             child: TextField(
//               onChanged: onChanged,
//               controller: textEditingController,
//               focusNode: focusNode,
//               style: textStyle ?? DooadexTypo.headline,
//               decoration: InputDecoration(
//                 border: const UnderlineInputBorder(),
//                 hintText: hintText,
//                 hintStyle:
//                     DooadexTypo.headline.copyWith(color: DooadexColor.gray),
//                 focusedBorder: const UnderlineInputBorder(),
//                 // isDense: true,
//               ),
//             ),
//           ),
//         );
// }
//
// class _UnderlineWidthSuffixTextField extends DooadexTextField {
//   _UnderlineWidthSuffixTextField({
//     key,
//     required TextEditingController textEditingController,
//     ValueChanged<String>? onChanged,
//     required VoidCallback onPressed,
//     FocusNode? focusNode,
//     double? width,
//     String? hintText,
//     TextStyle? textStyle,
//     Widget? suffix,
//   }) : super(
//           key: key,
//           textFieldWidget: SizedBox(
//             width: width ?? 328,
//             child: TextField(
//               onChanged: onChanged,
//               focusNode: focusNode,
//               controller: textEditingController,
//               style: textStyle ?? DooadexTypo.headline,
//               decoration: InputDecoration(
//                 border: const UnderlineInputBorder(),
//                 hintText: hintText,
//                 hintStyle:
//                     DooadexTypo.headline.copyWith(color: DooadexColor.gray),
//                 focusedBorder: const UnderlineInputBorder(),
//                 suffix: suffix ??
//                     DooadexButton.destructiveText(
//                       onPressed: onPressed,
//                       text: "add",
//                       textStyle: DooadexTypo.subhead
//                           .copyWith(color: DooadexColor.bilobaFlower),
//                     ),
//                 isDense: true,
//                 contentPadding: EdgeInsets.zero,
//               ),
//             ),
//           ),
//         );
// }
