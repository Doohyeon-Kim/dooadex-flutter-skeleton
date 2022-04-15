import 'package:flutter/material.dart';

import '../presentation/views/service_samples_view.dart';

class ServiceSamplesScreen extends StatelessWidget {
  const ServiceSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            ServiceSamplesView(),
          ],
        ),
      ),
    );
  }
}
