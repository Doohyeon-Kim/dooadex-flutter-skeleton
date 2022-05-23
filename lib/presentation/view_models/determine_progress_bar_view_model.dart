import 'base/base_view_model.dart';

class DetermineProgressBarViewModel extends BaseViewModel {
  double progress = 0;

  void setProgress({required double progress}) {
    this.progress = progress;
    // this.progress = converseToProgressRate(progress: progress);
    super.rebuild();
  }

  double converseToProgressRate({required double progress}) {
    return progress * 0.01;
  }
}
