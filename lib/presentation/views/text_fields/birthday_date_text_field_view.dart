import 'package:dooadex_flutter_skeleton/components/text_fields/date_text_field.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/birthday_date_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirthdayDateTextFieldView extends StatelessWidget {
  const BirthdayDateTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateTextField.yyyymmdd(
          textEditingController:
              context.read<BirthdayDateTextFieldViewModel>().textFieldController.textEditingController,
          errorStyle: DooadexTypo.caption.copyWith(height: 0),
          errorText:
              context.watch<BirthdayDateTextFieldViewModel>().textFieldController.textFieldError.isOccurred == true
                  ? ""
                  : null,
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 6.0),
        //   child: SizedBox(
        //     height: 18,
        //     child: Text(
        //       context.watch<BirthdayDateTextFieldViewModel>().textFieldController.textFieldError.message ?? "",
        //       style: DooadexTypo.caption.copyWith(color: DooadexColor.red),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
