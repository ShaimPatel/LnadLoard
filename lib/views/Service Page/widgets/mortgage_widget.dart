import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/colors/app_color.dart';

class MortgageWidget extends StatelessWidget {
  const MortgageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      color: AppColor.whiteColor,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Text(
              "Mortgage",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const SizedBox(height: 5),
            CustomeDividerWidget(
              color: AppColor.greenColor,
              endIndent: 10,
            ),
            const SizedBox(height: 10),
            const Text(
              "Smart Link Estates can introduce Financial Advisors to help find you the perfect home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Financial services with Smart Link Estates. We've got you covered.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              """We know, buying, selling or letting a property is one of the most difficult decisions and toughest decisions to make. It is important therefore, as well as you choosing the right property, you have your finances in place before making any move.
""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "How we can help",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Expert advice",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              "Moving home",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              "First-time buyer",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              "Remortgage",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              "Buy-to-let",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
