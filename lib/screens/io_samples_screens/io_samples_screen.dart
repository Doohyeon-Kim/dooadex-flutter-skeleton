import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/buttons/dooadex_button.dart';
import '../../constants/route_constants.dart';

class IoSamplesScreen extends StatelessWidget {
  const IoSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DooadexButton.elevated(
          onPressed: () {
            GoRouter.of(context).pushNamed(DooadexRoute.name.textFieldSamples);
          },
          child: const Text("TextField Samples"),
          color: DooadexColor.blue,
        ),
        DooadexButton.elevated(
          onPressed: () {
            GoRouter.of(context).pushNamed(DooadexRoute.name.buttonSamples);
          },
          child: const Text("Button Samples"),
          color: DooadexColor.blue,
        ),
      ],
    );
  }
}
