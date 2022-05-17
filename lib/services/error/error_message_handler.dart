import 'package:dooadex_flutter_skeleton/components/dialogs/error_popup_dialog.dart';
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
        return ErrorPopupDialog(
          errorTitle: _errorMessage?.errorTitle,
          errorMsg: _errorMessage?.errorMsg,
          dialogContext: dialogContext,
        );
      },
    );
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
