import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';
import 'package:dooadex_flutter_skeleton/utilities/controller/text_field/text_field_controller.dart';
import 'package:dooadex_flutter_skeleton/utilities/format_handler/parser.dart';
import 'package:dooadex_flutter_skeleton/utilities/validator/validator.dart';

class BirthdayDateTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;

  BirthdayDateTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      if (textFieldController.isFilled(
          textLength: textFieldController.textEditingController.text.length, maxLength: 8)) {
        textFieldController.textFieldError.isOccurred = !isValid();
      } else {
        textFieldController.textFieldError.message = null;
        textFieldController.textFieldError.isOccurred = false;
      }
      super.rebuild();
    });
  }

  bool isValid() {
    try {
      DateTime parsedDate = Parser.toBirthDateTime(stringDateTime: textFieldController.textEditingController.text);
      if (Validator.validateBirthDate(birthDate: parsedDate) == false) {
        textFieldController.textFieldError.message = "Future date is not Available.";
        return false;
      }
      textFieldController.textFieldError.message = null;
      textFieldController.textFieldError.isOccurred = false;
      return true;
    } catch (e) {
      textFieldController.textFieldError.message = e.toString();
      return false;
    }
  }
}
