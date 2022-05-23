import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/components/text_fields/outline_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field_test/outline_text_field_test_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/text_fields/kor_id_num_text_field_view.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/text_fields/nickname_text_field_view.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/text_fields/phone_number_text_field_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OutlineTextFieldSamplesScreen extends StatelessWidget {
  const OutlineTextFieldSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Column(
          children: [
            TopNavigationBar.title(
              title: "Outline Text Field Samples",
              context: context,
              style: DooadexTypo.headline,
            ),
            Expanded(
              child: MultiProvider(
                providers: [
                  ChangeNotifierProvider<OutlineTextFieldTestViewModel>(
                      create: (context) => OutlineTextFieldTestViewModel()),
                ],
                child:
                    Consumer<OutlineTextFieldTestViewModel>(builder: (context, outlineTextFieldTestViewModel, child) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(14.0),
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      children: [
                        OutlineTextField(
                          hintText: "hint text_field_test",
                          textEditingController:
                              outlineTextFieldTestViewModel.textFieldController01.textEditingController,
                        ),
                        Text(outlineTextFieldTestViewModel.textFieldController01.getText()),
                        const SizedBox(
                          height: 16,
                        ),
                        OutlineTextField.suffix(
                          suffix: Container(
                            height: 18,
                            width: 40,
                            alignment: Alignment.center,
                            child: DooadexButton.destructiveText(
                              onPressed: () {
                                outlineTextFieldTestViewModel.setText();
                              },
                              text: "add",
                              textStyle: DooadexTypo.subhead.copyWith(color: DooadexColor.bilobaFlower),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          hintText: "hint text_field_test",
                          textEditingController:
                              outlineTextFieldTestViewModel.textFieldController02.textEditingController,
                          focusNode: outlineTextFieldTestViewModel.textFieldController02.focusNode,
                        ),
                        Text(outlineTextFieldTestViewModel.text ?? ""),
                        const SizedBox(
                          height: 16,
                        ),
                        const KorIdNumTextFieldView(),
                        const SizedBox(
                          height: 16,
                        ),
                        const PhoneNumberTextFieldView(),
                        const SizedBox(
                          height: 16,
                        ),
                        const NicknameTextFieldView(),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
