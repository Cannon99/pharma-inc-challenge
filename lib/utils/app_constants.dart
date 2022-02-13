import 'package:flutter/widgets.dart';

class AppConstants {
  static const baseUrl = 'https://randomuser.me/api/';

  static double getPaddingAvatarUserDetails(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.03;
  }

  static double getAvatarRadiusUserDetails(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.1;
  }

  static double getDefaultPaddingUserDetails(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.02;
  }
}
