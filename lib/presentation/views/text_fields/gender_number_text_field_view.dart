import 'package:dooadex_flutter_skeleton/components/figures/circles/circle.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/outlined_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/gender_number_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderNumberTextFieldView extends StatelessWidget {
  const GenderNumberTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            OutlineTextField.singleChar(
              textEditingController: context
                  .read<GenderNumberTextFieldViewModel>()
                  .textFieldController
                  .textEditingController,
              errorText: context
                          .watch<GenderNumberTextFieldViewModel>()
                          .errorOccurred ==
                      true
                  ? ""
                  : null,
              errorStyle: DooadexTypo.caption.copyWith(height: 0),
            ),
            Row(
              children: [
                for (int i = 0; i < 6; i++)
                  const Circle(
                    width: 6,
                    height: 6,
                    padding: EdgeInsets.only(left: 6),
                  ),
                const SizedBox(
                  width: 6,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: SizedBox(
            height: 18,
            child: Text(
              context.watch<GenderNumberTextFieldViewModel>().errorText ?? "",
              style: DooadexTypo.caption.copyWith(color: DooadexColor.red),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:dooadex_flutter_skeleton/components/figures/circles/circle.dart';
// import 'package:dooadex_flutter_skeleton/components/text_fields/outlined_text_field.dart';
// import 'package:dooadex_flutter_skeleton/configs/palette.dart';
// import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/gender_number_text_field_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class GenderNumberTextFieldView extends StatelessWidget {
//   const GenderNumberTextFieldView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<GenderNumberTextFieldViewModel>(
//             create: (context) => GenderNumberTextFieldViewModel()),
//       ],
//       child: Consumer<GenderNumberTextFieldViewModel>(
//           builder: (context, genderNumberTextFieldViewModel, child) {
//         return Column(
//           children: [
//             Row(
//               children: [
//                 OutlineTextField.singleChar(
//                   textEditingController: genderNumberTextFieldViewModel
//                       .textFieldController.textEditingController,
//                   errorText: context
//                               .watch<GenderNumberTextFieldViewModel>()
//                               .errorOccurred ==
//                           true
//                       ? ""
//                       : null,
//                   errorStyle: DooadexTypo.caption.copyWith(height: 0),
//                 ),
//                 Row(
//                   children: [
//                     for (int i = 0; i < 6; i++)
//                       const Circle(
//                         width: 6,
//                         height: 6,
//                         padding: EdgeInsets.only(left: 6),
//                       ),
//                     const SizedBox(
//                       width: 6,
//                     ),
//                   ],
//                 ),
//               ],
//             ),  Padding(
//               padding: const EdgeInsets.symmetric(vertical: 6.0),
//               child: SizedBox(
//                 height: 18,
//                 child: Text(context.watch<GenderNumberTextFieldViewModel>().errorText ??
//                     "", style:  DooadexTypo.caption.copyWith(color: DooadexColor.red),),
//               ),
//             ),
//           ],
//         );
//       }),
//     );
//   }
// }
