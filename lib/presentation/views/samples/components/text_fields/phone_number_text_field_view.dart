import 'package:dooadex_flutter_skeleton/components/text_fields/outline_text_field.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/phone_number_text_field_view_model.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhoneNumberTextFieldView extends StatelessWidget {
  const PhoneNumberTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PhoneNumberTextFieldViewModel>(create: (context) => PhoneNumberTextFieldViewModel()),
      ],
      child: Consumer<PhoneNumberTextFieldViewModel>(builder: (context, phoneNumberTextFieldViewModel, child) {
        return Column(
          children: [
            OutlineTextField.prefixIcon(
              textEditingController: phoneNumberTextFieldViewModel.textFieldController.textEditingController,
              hintText: "12345678",
              maxLength: 8,
              hintStyle: DooadexTypo.headline.copyWith(
                color: DooadexColor.secondary,
              ),
              errorText:
                  context.watch<PhoneNumberTextFieldViewModel>().textFieldController.textFieldError.isOccurred == true
                      ? phoneNumberTextFieldViewModel.textFieldController.textFieldError.message
                      : null,
              prefix: Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 0, 0),
                child: Text(
                  "010 -",
                  style: DooadexTypo.headline.copyWith(
                    color: DooadexColor.secondary,
                  ),
                ),
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
          ],
        );
      }),
    );
  }
}
