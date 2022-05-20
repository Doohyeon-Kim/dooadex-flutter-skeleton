import 'package:dooadex_flutter_skeleton/components/text_fields/outline_text_field.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/nickname_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NicknameTextFieldView extends StatelessWidget {
  const NicknameTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NicknameTextFieldViewModel>(create: (context) => NicknameTextFieldViewModel()),
      ],
      child: Consumer<NicknameTextFieldViewModel>(builder: (context, nicknameTextFieldViewModel, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OutlineTextField(
              textEditingController: nicknameTextFieldViewModel.textFieldController.textEditingController,
              hintText: "2 ~ 10 character",
              errorText: nicknameTextFieldViewModel.textFieldController.textFieldError.isOccurred == true
                  ? nicknameTextFieldViewModel.textFieldController.textFieldError.message
                  : null,
              errorStyle: const TextStyle(height: 0),
              maxLength: 10,
            ),
          ],
        );
      }),
    );
  }
}
