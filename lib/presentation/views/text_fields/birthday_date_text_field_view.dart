import 'package:dooadex_flutter_skeleton/components/text_fields/date_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/birthday_date_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirthdayDateTextFieldView extends StatelessWidget {
  const BirthdayDateTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BirthdayDateTextFieldViewModel>(
            create: (context) => BirthdayDateTextFieldViewModel()),
      ],
      child: Consumer<BirthdayDateTextFieldViewModel>(
          builder: (context, birthdayDateTextFieldViewModel, child) {
        return DateTextField.yyyymmdd(
          textEditingController: birthdayDateTextFieldViewModel
              .textFieldController.textEditingController,
          errorText: birthdayDateTextFieldViewModel.errorText,
          errorStyle: DooadexTypo.caption,
        );
      }),
    );
  }
}
