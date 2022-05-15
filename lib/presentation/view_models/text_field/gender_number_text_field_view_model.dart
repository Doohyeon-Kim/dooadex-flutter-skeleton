import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';
import 'package:dooadex_flutter_skeleton/utilities/controller/text/text_field_controller.dart';

class GenderNumberTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;
  String? errorText;
  bool errorOccurred = false;

  GenderNumberTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      isValidNumber(textFieldController.textEditingController.text);

      super.rebuild();
    });
  }

  bool isValidNumber(String text) {
    if (text != "") {
      int parsedInt = int.parse(text);
      print(parsedInt);
      if (parsedInt > 5 || parsedInt < 1) {
        errorText = "유효하지 않은 입력입니다.";
        errorOccurred = true;
        return false;
      } else {
        errorText = "";
        errorOccurred = false;
        return true;
      }
    } else {
      errorText = "";
      errorOccurred = false;
      return true;
    }
  }
}
