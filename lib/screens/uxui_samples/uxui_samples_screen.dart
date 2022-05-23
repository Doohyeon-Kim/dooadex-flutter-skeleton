import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/buttons/dooadex_button.dart';

class UxUiSamplesScreen extends StatelessWidget {
  const UxUiSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DooadexButton.elevated(
          onPressed: () {
            GoRouter.of(context).pushNamed(DooadexRoute.name.progressIndicatorSamples);
          },
          child: const Text("Progress Bar Samples"),
          color: DooadexColor.green,
        ),
      ],
    );
  }
}
