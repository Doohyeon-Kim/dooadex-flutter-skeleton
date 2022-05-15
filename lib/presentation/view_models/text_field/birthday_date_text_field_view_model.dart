import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';
import 'package:dooadex_flutter_skeleton/utilities/controller/text/text_field_controller.dart';
import 'package:dooadex_flutter_skeleton/utilities/date_format_handler.dart';

class BirthdayDateTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;
  String? errorText;
  bool errorOccurred = false;

  BirthdayDateTextFieldViewModel() {
    textFieldController = TextFieldController();
    textFieldController.textEditingController.addListener(() {
      if (textFieldController.isFilled(
          textLength: textFieldController.textEditingController.text.length,
          maxLength: 8)) {
        isValid();
      } else {
        errorText = null;
      }
      super.rebuild();
    });
  }

  DateTime parse() {
    try {
      return DateFormatHandler.parseToDateTime(
          stringDateTime: textFieldController.textEditingController.text);
    } catch (e) {
      throw ("잘못된 형식입니다.");
    }
  }

  bool isValid() {
    try {
      DateFormatHandler.checkCurrentDateHasPassed(parse());
      errorText = null;
      errorOccurred = false;
      return true;
    } catch (e) {
      errorOccurred = true;
      errorText = e.toString();
      return false;
    }
  }
}
