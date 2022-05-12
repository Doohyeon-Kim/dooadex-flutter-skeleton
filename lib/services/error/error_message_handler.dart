import 'package:flutter/material.dart';

import '../../components/buttons/dooadex_button.dart';
import '../../configs/palette.dart';
import 'error.dart';

class ErrorMessage {
  String errorTitle;
  String errorMsg;

  ErrorMessage({required this.errorTitle, required this.errorMsg});
}

class ErrorMessageHandler {
  static ErrorMessage? _errorMessage;

  ErrorMessageHandler._();

  static bool checkErrorMessageExist() => _errorMessage != null ? true : false;

  static setErrorMessage({required DooadexError dooadexError}) {
    _errorMessage = ErrorMessage(
        errorTitle: dooadexError.errorUserTitle!,
        errorMsg: dooadexError.errorUserMsg!);
  }

  static ErrorMessage getErrorMessage() {
    if (checkErrorMessageExist()) {
      return _errorMessage!;
    } else {
      return ErrorMessage(errorTitle: '', errorMsg: '');
    }
  }

  static printErrorMessage({required BuildContext context}) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('${_errorMessage?.errorTitle ?? "에러"} '),
          content: Text(
            '${_errorMessage?.errorMsg ?? "알 수 없는 오류가 발생했습니다.\n잠시 후 다시 시도해주세요."} ',
            style: DooadexTypo.body,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DooadexButton.destructiveText(
                    onPressed: () {
                      flushErrorMessage();
                      Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                    },
                    text: "확인"),
              ],
            ),
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        );
      },
    );
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
