import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/birthday_date_text_field_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/gender_number_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'birthday_date_text_field_view.dart';
import 'gender_number_text_field_view.dart';

class KorIdNumTextFieldView extends StatelessWidget {
  const KorIdNumTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BirthdayDateTextFieldViewModel>(create: (context) => BirthdayDateTextFieldViewModel()),
        ChangeNotifierProvider<GenderNumberTextFieldViewModel>(create: (context) => GenderNumberTextFieldViewModel()),
      ],
      child: Consumer2<BirthdayDateTextFieldViewModel, GenderNumberTextFieldViewModel>(
          builder: (context, birthdayDateTextFieldViewModel, genderNumberTextFieldViewModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BirthdayDateTextFieldView(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    color: Colors.black,
                    width: 6,
                    height: 2,
                  ),
                ),
                const GenderNumberTextFieldView(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
              child: SizedBox(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    birthdayDateTextFieldViewModel.textFieldController.textFieldError.isOccurred == false
                        ? const SizedBox()
                        : Text(
                            birthdayDateTextFieldViewModel.textFieldController.textFieldError.message ?? "",
                            style: DooadexTypo.caption.copyWith(
                              color: DooadexColor.red,
                            ),
                          ),
                    genderNumberTextFieldViewModel.textFieldController.textFieldError.isOccurred == false
                        ? const SizedBox()
                        : Text(
                            genderNumberTextFieldViewModel.textFieldController.textFieldError.message ?? "",
                            style: DooadexTypo.caption.copyWith(
                              color: DooadexColor.red,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
