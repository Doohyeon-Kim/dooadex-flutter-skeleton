import 'package:auto_size_text/auto_size_text.dart';
import 'package:dooadex_error_handler/dooadex_error_handler.dart';
import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/location/location_view_model.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/user/user_view_models.dart';
import 'package:dooadex_palette/dooadex_palette.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/dooadex_constants.dart';
import '../../../services/native_api/local_notification.dart';

class FeatureSamplesView extends StatelessWidget {
  const FeatureSamplesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LocationViewModel>(
            create: (context) => LocationViewModel()),
      ],
      child: Padding(
        padding: EdgeInsets.all(unitWidth20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer<LocationViewModel>(
              builder: (context, locationViewModel, child) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: unitHeight4),
                  child: Row(
                    children: [
                      DooadexButton.filled(
                        onPressed: () async {
                          locationViewModel.getPosition();
                        },
                        textStyle:
                            DooadexTypo.caption1.copyWith(color: Colors.white),
                        size: Size(unitWidth60, unitHeight48),

                        child: const Text("Location"),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lat: ${locationViewModel.position?.latitude}"),
                          Text("lon: ${locationViewModel.position?.longitude}"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: unitHeight4),
              child: Row(
                children: [
                  DooadexButton.filled(
                    onPressed: () async {
                      try {
                        await context
                            .read<UserViewModel>()
                            .getUser(name: "dhkim");
                      } catch (error) {
                        ErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
                      }
                    },
                    textStyle: DooadexTypo.caption1.copyWith(color: Colors.white),
                     
                    child: const Text("Server API"),
                  ),
                  SizedBox(width: unitWidth8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'user id: ${context.watch<UserViewModel>().user?.id ?? ''}'),
                      Text(
                          'user name: ${context.watch<UserViewModel>().user?.name ?? ""}'),
                    ],
                  ),
                ],
              ),
            ),
            DooadexButton.filled(
              onPressed: () async {
                try {
                  await context.read<UserViewModel>().getUser(name: "");
                } catch (error) {
                  ErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
                }
              },
              textStyle: DooadexTypo.caption1.copyWith(color: Colors.white),
               
              child: const Text("Error Service"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: unitHeight4),
              child: Row(
                children: [
                  DooadexButton.filled(
                    onPressed: () {
                      if (context.read<KakaoUserViewModel>().getToken() ==
                          null) {
                        context.read<KakaoUserViewModel>().kakaoLogin();
                      }
                    },
                    textStyle: DooadexTypo.caption1.copyWith(color: Colors.white),
                    size: Size(unitWidth60, unitHeight48),
                    child: const Text("Kakao Login"),
                  ),
                  SizedBox(width: unitWidth8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('kakao user token'),
                        Text(
                          context.watch<KakaoUserViewModel>().getToken() ?? '',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                DooadexButton.filled(
                  onPressed: () async {
                    await LocalNotification.sampleNotification();
                  },
                  textStyle: DooadexTypo.caption1.copyWith(color: Colors.white),
                  child: const Text("Local Notification"),
                ),
                SizedBox(width: unitWidth8),
                DooadexButton.filled(
                  onPressed: () async {
                    LocalNotification.requestPermission();
                  },
                  textStyle: DooadexTypo.caption1.copyWith(color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: unitWidth8),
                  child: const AutoSizeText("Permission Request"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
