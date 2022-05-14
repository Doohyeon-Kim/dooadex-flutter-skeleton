import 'package:dooadex_flutter_skeleton/utilities/controller/text/text_field_controller.dart';
import '../base/base_view_model.dart';

class OutlineTextFieldTestViewModel extends BaseViewModel {
  /// intended redundancy
  late TextFieldController textFieldController01;
  late TextFieldController textFieldController02;

  /// To Store text_field_test from textEditingController02
  String? text;

  // int maxDate = DateTime.now();

  OutlineTextFieldTestViewModel() {
    textFieldController01 = TextFieldController();
    textFieldController02 = TextFieldController();
    textFieldController01.textEditingController.addListener(() {
      super.rebuild();
    });
  }

  setText() {
    text = textFieldController02.getText();
    textFieldController02.flush();
    super.rebuild();
  }
}
