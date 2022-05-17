import 'base_text_field_controller.dart';

class _TextFieldError {
  String? message;
  bool isOccurred = false;
}

class TextFieldController extends BaseTextFieldController {
  _TextFieldError textFieldError = _TextFieldError();

  isFilled({required int textLength, required int maxLength}) {
    return textLength == maxLength ? true : false;
  }
}
