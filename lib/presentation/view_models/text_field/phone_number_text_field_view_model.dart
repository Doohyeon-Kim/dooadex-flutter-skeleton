import 'package:dooadex_flutter_skeleton/utilities/controller/text_field/text_field_controller.dart';
import 'package:dooadex_flutter_skeleton/utilities/format_handler/format_handler.dart';
import 'package:dooadex_flutter_skeleton/utilities/validator/validator.dart';

import '../base/base_view_model.dart';

class PhoneNumberTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;

  PhoneNumberTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      if (textFieldController.isFilled(maxLength: 8)) {
        textFieldController.textFieldError.isOccurred = !isValid();
      } else {
        textFieldController.textFieldError.isOccurred = false;
      }
      super.rebuild();
    });
  }

  String parse() {
    return FormatHandler.parser.toPhoneNumber(phoneNumber: textFieldController.textEditingController.text);
  }

  bool isValid() {
    if (Validator.validatePhoneNumber(phoneNumber: parse())) {
      textFieldController.textFieldError.message = null;
      return true;
    } else {
      textFieldController.textFieldError.message = "Invalid Format.";
      return false;
    }
  }
}
