import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key, this.context, this.navigationBarWidget}) : super(key: key);

  final Widget? navigationBarWidget;
  final BuildContext? context;

  factory TopNavigationBar.title({
    Key? key,
    required String title,
    required BuildContext context,
    TextStyle? style,
    Widget? leftWidget,
    Widget? rightWidget,
  }) = _TitleTopNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topSafeAreaPadding,
      ),
      child: navigationBarWidget ??
          SizedBox(
            height: 44,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SizedBox(
                    width: 48,
                    child: DooadexButton.icon(
                      splashRadius: 32,
                      onPressed: () => GoRouter.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

class _TitleTopNavigationBar extends TopNavigationBar {
  _TitleTopNavigationBar({
    Key? key,
    required String title,
    required BuildContext context,
    TextStyle? style,
    Widget? leftWidget,
    Widget? rightWidget,
  }) : super(
          key: key,
          navigationBarWidget: SizedBox(
            height: 44,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SizedBox(
                    width: 48,
                    child: leftWidget ??
                        DooadexButton.icon(
                          onPressed: () => GoRouter.of(context).pop(),
                          icon: const Icon(Icons.arrow_back_ios),
                          splashRadius: 32,
                        ),
                  ),
                  Expanded(
                    child: Center(child: Text(title)),
                  ),
                  rightWidget ??
                      const SizedBox(
                        width: 48,
                      ),
                ],
              ),
            ),
          ),
        );
}
