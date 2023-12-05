import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:landloard/global/Widgets/progress_dialog.dart';

import '../colors/app_color.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.whiteColor,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      textColor: AppColor.whiteColor,
    );
  }

  static showCircularDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => const ProgressDialog(),
    );
  }
}
