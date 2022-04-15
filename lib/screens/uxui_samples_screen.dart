import 'package:dooadex_flutter_skeleton/constants/named_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/buttons/dooadex_button.dart';

class UxUiSamplesScreen extends StatelessWidget {
  const UxUiSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DooadexButton.elevated(
          onPressed: () {
            GoRouter.of(context).push(RoutePath.buttonSamples);
            // return context.go(RoutePath.buttonSamples);
            // return context.goNamed("button_samples");
          },
          child: const Text("Button Samples"),
        ),

        // filledButton(
        //     onPressed: () {},
        //     textStyle: notoSansRegular24.copyWith(color: Colors.white),
        //     backgroundColor: DooadexColor.red,
        //     text: 'errorToast'),
      ],
    );
  }
}
