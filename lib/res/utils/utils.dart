import 'package:fluttertoast/fluttertoast.dart';
import '../colors/app_color.dart';

class Utils {
  // todo: Flutter Toast

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.whiteColor,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  //!
}
