import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/presentation/views/samples/components/text_field_test/underline_text_field_test_view.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class UnderlineTextFieldSamplesScreen extends StatelessWidget {
  const UnderlineTextFieldSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TopNavigationBar.title(
          title: "Outline Text Field Samples",
          context: context,
          style: DooadexTypo.headline.copyWith(color: DooadexColor.primary),
        ),
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
