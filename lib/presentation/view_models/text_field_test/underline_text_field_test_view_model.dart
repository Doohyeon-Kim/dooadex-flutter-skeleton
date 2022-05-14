import 'package:dooadex_flutter_skeleton/utilities/controller/text/text_field_controller.dart';
import '../base/base_view_model.dart';

class UnderlineTextFieldTestViewModel extends BaseViewModel {
  /// intended redundancy
  late TextFieldController textFieldController01;
  late TextFieldController textFieldController02;
  late TextFieldController textFieldController03;

  int maxDate = 30;

  /// To Store text_field_test from textEditingController02
  String? text;

  UnderlineTextFieldTestViewModel() {
    textFieldController01 = TextFieldController();
    textFieldController02 = TextFieldController();
    textFieldController03 = TextFieldController();

    textFieldController01.textEditingController.addListener(() {
      super.rebuild();
    });
    textFieldController02.textEditingController.addListener(() {
      super.rebuild();
    });
    textFieldController03.textEditingController.addListener(() {
      super.rebuild();
    });
  }

  setText() {
    text = textFieldController02.getText();
    textFieldController02.flush();
    super.rebuild();
  }

  bool inputOverError() {
    if (textFieldController03.textEditingController.text != "") {
      return int.parse(textFieldController03.textEditingController.text) >
              maxDate
          ? true
          : false;
    } else {
      return false;
    }
  }
}
