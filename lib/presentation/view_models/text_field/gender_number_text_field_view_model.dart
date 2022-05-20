import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';
import 'package:dooadex_flutter_skeleton/utilities/controller/text_field/text_field_controller.dart';
import 'package:dooadex_flutter_skeleton/utilities/validator/validator.dart';

class GenderNumberTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;

  GenderNumberTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      if (textFieldController.isFilled(maxLength: 1)) {
        textFieldController.textFieldError.isOccurred = !isValid();
      } else {
        textFieldController.textFieldError.message = null;
        textFieldController.textFieldError.isOccurred = false;
      }
      super.rebuild();
    });
  }

  bool isValid() {
    if (Validator.validateGenderNumber(genderNumber: textFieldController.textEditingController.text) == true) {
      textFieldController.textFieldError.message = null;
      return true;
    } else {
      textFieldController.textFieldError.message = "Only number 1~4 are available .";
      return false;
    }
  }
}
