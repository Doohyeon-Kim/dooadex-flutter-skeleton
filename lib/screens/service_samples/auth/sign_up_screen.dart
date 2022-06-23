import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/auth/sign_up_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/text_field/email_text_field_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/auth/email_text_field_view.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<EmailTextFieldViewModel>(
              create: (BuildContext context) => EmailTextFieldViewModel()),
          ChangeNotifierProxyProvider<EmailTextFieldViewModel, SignUpViewModel>(
            create: (BuildContext context) => SignUpViewModel(),
            update: (BuildContext context,
                EmailTextFieldViewModel emailTextFieldViewModel,
                SignUpViewModel? prevSignUpViewModel) {
              prevSignUpViewModel!
                  .update(emailTextFieldViewModel: emailTextFieldViewModel);
              return prevSignUpViewModel;
            },
          ),
        ],
        child: Consumer<SignUpViewModel>(
            builder: (context, signUpViewModel, child) {
          return Column(
            children: [
              TopNavigationBar.title(
                title: "Sign Up",
                context: context,
                style:
                    DooadexTypo.headline.copyWith(color: DooadexColor.primary),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    EmailTextFieldView(),
                  ],
                ),
              ),
              Spacer(),
              DooadexButton.filled(
                onPressed: () {
                  signUpViewModel.submit();
                },
                size: Size(double.infinity, 80),
                child: Text("Submit"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
