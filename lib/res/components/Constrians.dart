import 'package:flutter/material.dart';
import 'package:landloard/res/colors/app_color.dart';

const customGradient1 = LinearGradient(
  colors: [Color.fromARGB(255, 245, 243, 123), Color.fromARGB(255, 0, 85, 85)],
  begin: Alignment.topLeft,
  end: Alignment.center,
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
  transform: GradientRotation(-10.0),
);

const customGradient2 = LinearGradient(
    colors: [Color(0xffC2ABFA), Color((0xff392DED))],
    begin: Alignment.bottomRight,
    end: Alignment.centerLeft,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp);

Widget textFieldDesign(
    String text, String hint, TextEditingController controller, bool enable) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: AppColor.greenColor,
          )),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        child: TextField(
          controller: controller,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintText: hint,
            enabled: enable,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColor.forgrButtonColor),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget elevatedButton(String bText, Function() onpress, double value,
    double fontSize, Color tColor, Color bColor, double borderRadius) {
  return Container(
    width: value,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: bColor,
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
      ),
      onPressed: onpress,
      child: Text(
        bText,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.w600, color: tColor),
      ),
    ),
  );
}

Widget elevatedBorderButton(
    String bText,
    Function() onpress,
    double value,
    double fontSize,
    Color tColor,
    Color bColor,
    double borderRadius,
    Color boderColor) {
  return Container(
    width: value,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: boderColor,
      ),
      color: bColor,
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
      ),
      onPressed: onpress,
      child: Text(
        bText,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.w600, color: tColor),
      ),
    ),
  );
}
