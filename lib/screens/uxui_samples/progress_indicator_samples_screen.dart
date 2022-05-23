import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/components/navigation_bars/top_navigation_bar.dart';
import 'package:dooadex_flutter_skeleton/components/progress_indicators/progress_bar.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/determine_progress_bar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProgressIndicatorSamplesScreen extends StatelessWidget {
  const ProgressIndicatorSamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopNavigationBar.title(title: "Progress Indicator", context: context),
          const SizedBox(height: 8),
          const ProgressBar(),
          const SizedBox(height: 8),
          MultiProvider(
            providers: [
              ChangeNotifierProvider<DetermineProgressBarViewModel>(
                  create: (context) => DetermineProgressBarViewModel()),
            ],
            child: Consumer<DetermineProgressBarViewModel>(builder: (context, _determineProgressBarViewModel, child) {
              return Column(
                children: [
                  ProgressBar.determinate(progress: _determineProgressBarViewModel.progress),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i <= 5; i++)
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DooadexButton.filled(
                            onPressed: () {
                              _determineProgressBarViewModel.setProgress(progress: ((i * 20).toDouble()) * 0.01);
                            },
                            child: Text("${i * 20}"),
                            color: DooadexColor.green,
                            size: const Size(50, 40),
                          ),
                        )
                    ],
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
