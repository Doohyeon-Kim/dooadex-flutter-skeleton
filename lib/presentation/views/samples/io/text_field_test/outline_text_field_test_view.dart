import 'package:dooadex_flutter_skeleton/components/text_fields/outlined_text_field.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/birthday_date_text_field_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/gender_number_text_field_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field_test/outline_text_field_test_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/text_fields/birthday_date_text_field_view.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/text_fields/gender_number_text_field_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OutlineTextFieldTestView extends StatelessWidget {
  const OutlineTextFieldTestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OutlineTextFieldTestViewModel>(
            create: (context) => OutlineTextFieldTestViewModel()),
      ],
      child: Consumer<OutlineTextFieldTestViewModel>(
          builder: (context, outlineTextFieldTestViewModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlineTextField(
              hintText: "hint text_field_test",
              textEditingController: outlineTextFieldTestViewModel
                  .textFieldController01.textEditingController,
            ),
            Text(outlineTextFieldTestViewModel.textFieldController01.getText()),
            const SizedBox(
              height: 16,
            ),
            OutlineTextField.suffix(
              onPressed: () {
                outlineTextFieldTestViewModel.setText();
              },
              hintText: "hint text_field_test",
              textEditingController: outlineTextFieldTestViewModel
                  .textFieldController02.textEditingController,
              focusNode:
                  outlineTextFieldTestViewModel.textFieldController02.focusNode,
            ),
            Text(outlineTextFieldTestViewModel.text ?? ""),
            const SizedBox(
              height: 16,
            ),
            MultiProvider(
              providers: [
                ChangeNotifierProvider<BirthdayDateTextFieldViewModel>(
                    create: (context) => BirthdayDateTextFieldViewModel()),
                ChangeNotifierProvider<GenderNumberTextFieldViewModel>(
                    create: (context) => GenderNumberTextFieldViewModel()),
              ],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BirthdayDateTextFieldView(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.black,
                          width: 6,
                          height: 2,
                        ),
                        const SizedBox(
                          height: 24,
                        )
                      ],
                    ),
                  ),
                  const GenderNumberTextFieldView(),
                ],
              ),
            ),

            // DateTextField.yyyymmdd(
            //   textEditingController: outlineTextFieldTestViewModel
            //       .textFieldController03.textEditingController,errorText:
            // outlineTextFieldTestViewModel.inputOverError() == true
            //     ? "미래를 입력할 순 없습니다."
            //     : null,
            //   errorStyle: DooadexTypo.caption,
            // ),
            // const SizedBox(
            //   height: 16,
            // ),
          ],
        );
      }),
    );
  }
}
