import 'package:dooadex_flutter_skeleton/domain/use_cases/auth/sign_up.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/base/base_view_model.dart';

import '../text_field/email_text_field_view_model.dart';

class SignUpViewModel extends BaseViewModel {
  late String email;
  late SignUp signUp;
  late EmailTextFieldViewModel emailTextFieldViewModel;

  SignUpViewModel() {
    signUp = SignUp();
  }

  Future<void> submit() async {
    signUp.setSignUpEntity(
        email: emailTextFieldViewModel
            .textFieldController.textEditingController.text,
        password: "password",
        nickname: "nickname");

    signUp.printSignUpUserEntity();
    rebuild();
  }

  void update({required EmailTextFieldViewModel emailTextFieldViewModel}) {
    this.emailTextFieldViewModel = emailTextFieldViewModel;
    rebuild();
  }
}
