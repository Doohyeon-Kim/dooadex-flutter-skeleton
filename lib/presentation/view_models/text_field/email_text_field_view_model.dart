import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';
import 'package:dooadex_flutter_skeleton/utilities/controller/text_field/text_field_controller.dart';

class EmailTextFieldViewModel extends BaseViewModel {
  late TextFieldController textFieldController;

  EmailTextFieldViewModel() {
    textFieldController = TextFieldController();


  }
}
