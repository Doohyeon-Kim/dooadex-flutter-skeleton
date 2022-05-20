import 'base_text_field_controller.dart';

class _TextFieldError {
  String? message;
  bool isOccurred = false;
}

class TextFieldController extends BaseTextFieldController {
  _TextFieldError textFieldError = _TextFieldError();

  isFilled({required int maxLength}) {
    return super.textEditingController.text.length == maxLength ? true : false;
  }

  isMinLengthMet({required int minLength}) {
    return super.textEditingController.text.length >= minLength ? true : false;
  }
}
