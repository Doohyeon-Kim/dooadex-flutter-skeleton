import 'package:dooadex_flutter_skeleton/components/text_fields/date_text_field.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/underline_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field_test/underline_text_field_test_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UnderlineTextFieldTestView extends StatelessWidget {
  const UnderlineTextFieldTestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UnderlineTextFieldTestViewModel>(
            create: (context) => UnderlineTextFieldTestViewModel()),
      ],
      child: Consumer<UnderlineTextFieldTestViewModel>(
          builder: (context, underlineTextFieldTestViewModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UnderlineTextField(
              hintText: "hint text_field_test",
              textEditingController: underlineTextFieldTestViewModel
                  .textFieldController01.textEditingController,
            ),
            Text(underlineTextFieldTestViewModel.textFieldController01
                .getText()),
            const SizedBox(
              height: 16,
            ),
            UnderlineTextField.suffix(
              onPressed: () {
                underlineTextFieldTestViewModel.setText();
              },
              hintText: "hint text_field_test",
              textEditingController: underlineTextFieldTestViewModel
                  .textFieldController02.textEditingController,
              focusNode: underlineTextFieldTestViewModel
                  .textFieldController02.focusNode,
            ),
            Text(underlineTextFieldTestViewModel.text ?? ""),
            const SizedBox(
              height: 16,
            ),
            DateTextField.dd(
              textEditingController: underlineTextFieldTestViewModel
                  .textFieldController03.textEditingController,
              errorText:
                  underlineTextFieldTestViewModel.inputOverError() == true
                      ? "30일 이하로 입력해주세요."
                      : null,
              errorStyle: DooadexTypo.caption,
            ),
            Text(underlineTextFieldTestViewModel.textFieldController03
                .getText()),
          ],
        );
      }),
    );
  }
}
