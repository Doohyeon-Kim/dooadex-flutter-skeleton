import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/samples/io/text_field_test/underline_text_field_test_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class UnderlineTextFieldSamplesScreen extends StatelessWidget {
  const UnderlineTextFieldSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: DooadexButton.icon(
      //     onPressed: () => GoRouter.of(context).pop(),
      //     splashRadius: 20,
      //     color: DooadexColor.blue,
      //     icon: const Icon(Icons.arrow_back_ios),
      //   ),
      // ),
      body: Column(
        children: [
          TopNavigationBar.title(title: "title", context: context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              UnderlineTextFieldTestView(),
            ],
          ),
        ],
      ),
    );
  }
}
