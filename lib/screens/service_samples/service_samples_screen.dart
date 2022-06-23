import 'package:dooadex_flutter_skeleton/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/buttons/dooadex_button.dart';

class ServiceSamplesScreen extends StatelessWidget {
  const ServiceSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DooadexButton.convex(
            onPressed: () {
              GoRouter.of(context).pushNamed(DooadexRoute.name.signUp);
            },
            onPressedChild: const Text(
              "SignUp",
              style: TextStyle(color: Colors.white),
            ),
            child: const Text(
              "SignUp",
              style: TextStyle(color: Colors.white),
            ),
          ),
          DooadexButton.elevated(
            onPressed: () {
              GoRouter.of(context)
                  .pushNamed(DooadexRoute.name.outlineTextFieldSamples);
            },
            child: const Text("SignIn"),
          ),
        ],
      ),
    );
  }
}
