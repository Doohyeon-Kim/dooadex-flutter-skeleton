import 'package:flutter/material.dart';

import '../../presentation/views/samples/service_samples_view.dart';

class FeatureSamplesScreen extends StatelessWidget {
  const FeatureSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            FeatureSamplesView(),
          ],
        ),
      ),
    );
  }
}
