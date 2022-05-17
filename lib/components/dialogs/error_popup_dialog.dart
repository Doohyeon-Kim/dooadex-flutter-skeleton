import 'package:dooadex_flutter_skeleton/components/buttons/dooadex_button.dart';
import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/services/error/error_message_handler.dart';
import 'package:flutter/material.dart';

class ErrorPopupDialog extends StatelessWidget {
  const ErrorPopupDialog({
    Key? key,
    this.errorTitle,
    this.errorMsg,
    required this.dialogContext,
  }) : super(key: key);

  final String? errorTitle;
  final String? errorMsg;
  final BuildContext dialogContext;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${errorTitle ?? "에러"} '),
      content: Text(
        '${errorMsg ?? "알 수 없는 오류가 발생했습니다.\n잠시 후 다시 시도해주세요."} ',
        style: DooadexTypo.body,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DooadexButton.destructiveText(
                onPressed: () {
                  ErrorMessageHandler.flushErrorMessage();
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
                text: "확인"),
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
