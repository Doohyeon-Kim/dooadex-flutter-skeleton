import 'package:dooadex_flutter_skeleton/presentation/views/samples/text_form_field_samples_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/buttons/dooadex_button.dart';
import '../../configs/palette.dart';

class TextFormFieldSamplesScreen extends StatelessWidget {
  const TextFormFieldSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: DooadexButton.icon(
          onPressed: () => GoRouter.of(context).pop(),
          splashRadius: 20,
          color: DooadexColor.blue,
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          TextFormFieldSamplesView(),
        ],
      ),
    );
  }
}
