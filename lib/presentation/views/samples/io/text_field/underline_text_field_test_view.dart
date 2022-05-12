import 'package:dooadex_flutter_skeleton/components/text_fields/dooadex_textfield.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text/underline_text_field_test_view_model.dart';
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
            DooadexTextField.underline(
              hintText: "hint text",
              textEditingController:
                  underlineTextFieldTestViewModel.textFieldController01.textEditingController,
            ),
            Text(underlineTextFieldTestViewModel.textFieldController01.getText()),
            const SizedBox(
              height: 16,
            ),
            DooadexTextField.underlineWithSuffix(
              onPressed: () {
                underlineTextFieldTestViewModel.setText();
              },
              hintText: "hint text",
              textEditingController: underlineTextFieldTestViewModel.textFieldController02.textEditingController,
              focusNode: underlineTextFieldTestViewModel.textFieldController02.focusNode,
            ),
            Text(underlineTextFieldTestViewModel.text ?? ""),
            const SizedBox(
              height: 16,
            ),
          ],
        );
      }),
    );
  }
}
