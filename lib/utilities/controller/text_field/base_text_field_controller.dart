import 'package:flutter/widgets.dart';

abstract class BaseTextFieldController {
  late TextEditingController textEditingController;
  late FocusNode focusNode;

  BaseTextFieldController() {
    textEditingController = TextEditingController();
    focusNode = FocusNode();
  }

  String getText(){
    return textEditingController.text;
  }

  onSubmitted() {}

  flush() {
    textEditingController.clear();
  }

  onChanged() {}
}
