import 'package:flutter/material.dart';

import '../../../res/colors/app_color.dart';
import '../../../res/components/constrians.dart';

class EnquireWidgets extends StatelessWidget {
  const EnquireWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return //!
        Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: AppColor.greenColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.phone_android_outlined,
                  color: AppColor.whiteColor,
                ),
                Text(
                  "Find out your home's value",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.whiteColor),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Get a free online estimate of your home's current value",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greyColor),
            ),
            const SizedBox(height: 30),
            Center(
              child: elevatedBorderButton(
                "enquire with us".toUpperCase(),
                () => null,
                200.0,
                14,
                AppColor.yellowColor,
                AppColor.greenColor,
                5,
                AppColor.yellowColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
