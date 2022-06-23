import 'package:dooadex_flutter_skeleton/components/figures/circles/circle.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/outline_text_field.dart';

import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/gender_number_text_field_view_model.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
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
              textEditingController:
                  context.read<GenderNumberTextFieldViewModel>().textFieldController.textEditingController,
              errorText:
                  context.watch<GenderNumberTextFieldViewModel>().textFieldController.textFieldError.isOccurred == true
                      ? ""
                      : null,
              errorStyle: DooadexTypo.caption1.copyWith(height: 0),
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
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 6.0),
        //   child: SizedBox(
        //     height: 18,
        //     child: Text(
        //       context.watch<GenderNumberTextFieldViewModel>().textFieldController.textFieldError.message ?? "",
        //       style: DooadexTypo.caption.copyWith(color: DooadexColor.red),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}