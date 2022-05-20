import 'package:dooadex_flutter_skeleton/utilities/validator/validator.dart';

import '../../../utilities/controller/text_field/text_field_controller.dart';
import '../base/base_view_model.dart';

class NicknameTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;

  NicknameTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      if (textFieldController.isMinLengthMet(minLength: 1)) {
        textFieldController.textFieldError.isOccurred = !isValid();
      } else {
        textFieldController.textFieldError.isOccurred = false;
      }
      super.rebuild();
    });
  }

  bool isValid() {
    if (Validator.validateNickname(nickname: textFieldController.textEditingController.text) == true) {
      textFieldController.textFieldError.message = null;
      return true;
    } else {
      textFieldController.textFieldError.message = "Invalid Nickname";
      return false;
    }
  }
}
