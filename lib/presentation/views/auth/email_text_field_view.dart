import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/email_text_field_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/text_fields/outline_text_field.dart';

class EmailTextFieldView extends StatelessWidget {
  const EmailTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineTextField(
        textEditingController: context
            .read<EmailTextFieldViewModel>()
            .textFieldController
            .textEditingController);
  }
}
