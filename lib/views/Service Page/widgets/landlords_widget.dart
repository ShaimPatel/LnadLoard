import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/assets/image_assets.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/constrians.dart';

class LandLordsWidget extends StatelessWidget {
  const LandLordsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.1,
      width: double.maxFinite,
      color: AppColor.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Landlords",
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
              "Our fully trained and dedicated agents are here to assist and advise you with all aspects of letting and selling your property, whether it is your own home or a property you have purchased for investment purposes.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "We offer four levels of service, let only, rent collection, management and guaranteed rent but aim to be as flexible as possible and appreciate that personal circumstances may require us to do more or less than our standard service packages.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "We pride ourselves on being able to provide our clients with a bespoke service that best suits your needs and requirements. ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Smart Link Estates are members of Property Redress Scheme.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "For further information on our bespoke services call our office today.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            elevatedButton(
              "See more",
              () => null,
              150.0,
              15,
              AppColor.whiteColor,
              AppColor.greenColor,
              25,
            ),
            const Expanded(
              child: Image(
                image: AssetImage(ImageAssets.home3),
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
