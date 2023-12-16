import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/assets/image_assets.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/constrians.dart';

class BarrowWidget extends StatelessWidget {
  const BarrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.1,
      color: AppColor.whiteColor,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Text(
              "How much can you borrow?",
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
            const SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.maxFinite,
              decoration: BoxDecoration(
                // color: AppColor.blueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage(ImageAssets.services),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Full range of services our service starts with finding one tenant and can extend right up to the wide management of a whole portfolio.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """We let properties, we collect rent, we can insure your property and its contents, and we can guarantee you will receive the rent. We can also manage your properties to the extent that you need never get involved. Whatever service you need, we work hard to make you feel we are good value for the fees we charge.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We also pay rents promptly giving you peace of mind, every step of the way.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 25),
            elevatedButton(
              "Calculate Now",
              () => null,
              150.0,
              15,
              AppColor.whiteColor,
              AppColor.greenColor,
              25,
            ),
          ],
        ),
      ),
    );
  }
}
