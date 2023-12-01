import 'package:flutter/material.dart';

class AppColor {
  static const int _primaryValue = 0xFF005555;
  static const MaterialColor greenColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: Color(_primaryValue), // Set the main primary color value here
      600: Color(0xFF00897B),
      700: Color(0xFF00796B),
      800: Color(0xFF00695C),
      900: Color(0xFF004D40),
    },
  );

  static const Color blackColor = Color(0xff000000);
  static const Color whiteColor = Color(0xffffffff);
  static const Color primaryColor = Color(0xff6157F1);
  static const Color homeCardsColor = Color(0xff8881F4);
  static const Color forgrButtonColor = Color(0xff424242);
  static const Color textfieldcolor = Color(0xffFAFAFA);
  static const Color greyColor = Color.fromARGB(255, 146, 144, 144);
  static const Color yellowColor = Color.fromARGB(255, 241, 238, 19);
  static const Color blueColor = Color.fromARGB(255, 19, 41, 241);



}
