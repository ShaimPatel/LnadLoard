import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../global/app_data.dart';
import '../../../res/assets/image_assets.dart';
import '../../../res/colors/app_color.dart';
import 'customer_says.dart';

class CustomerFeedbackWidget extends StatelessWidget {
  const CustomerFeedbackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.maxFinite,
      decoration: const BoxDecoration(color: AppColor.whiteColor),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            "Customer Says",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.greenColor,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 25),
          CustomeDividerWidget(
            height: 1,
            color: AppColor.greyColor,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 40),
          //!
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: MediaQuery.of(context).size.aspectRatio,
                    enlargeCenterPage: false,
                    reverse: false,
                    // enableInfiniteScroll: true,
                    initialPage: 1,
                    scrollPhysics: const BouncingScrollPhysics(),
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    viewportFraction: 1),
                items: AppData.userFeedback.map((e) {
                  return CustomerSaysSection(
                    ratingNumber: double.parse(e['ratingNumber']),
                    userFeedback: e['UserComment'],
                    userImage: const AssetImage(ImageAssets.user1),
                    userName: e['userName'],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
