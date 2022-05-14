import 'base_text_field_controller.dart';

class TextFieldController extends BaseTextFieldController {
  isFilled({required int textLength, required int maxLength}) {
    return textLength == maxLength ? true : false;
  }
}
