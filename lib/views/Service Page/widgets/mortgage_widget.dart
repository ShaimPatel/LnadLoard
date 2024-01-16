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
          children: const [
            SizedBox(height: 15),
            Text(
              "Mortgage",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            SizedBox(height: 5),
            CustomeDividerWidget(
              color: AppColor.greenColor,
              endIndent: 10,
            ),
            SizedBox(height: 10),
            Text(
              "Smart Link Estates can introduce Financial Advisors to help find you the perfect home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Financial services with Smart Link Estates. We've got you covered.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 15),
            Text(
              """We know, buying, selling or letting a property is one of the most difficult decisions and toughest decisions to make. It is important therefore, as well as you choosing the right property, you have your finances in place before making any move.
""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "How we can help",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Expert advice",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Moving home",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "First-time buyer",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Remortgage",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 3),
            Text(
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
