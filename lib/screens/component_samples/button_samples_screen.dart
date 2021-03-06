import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/views/samples/button_samples_view.dart';

class ButtonSamplesScreen extends StatelessWidget {
  const ButtonSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: DooadexButton.icon(
          onPressed: () => GoRouter.of(context).pop(),
          splashRadius: 20,
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          ButtonSamplesView(),
        ],
      ),
    );
  }
}
