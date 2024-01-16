import 'package:flutter/material.dart';
import 'package:landloard/views/HomePage/widgets/our_services.dart';

import '../../res/assets/image_assets.dart';

class OurServiceSection extends StatelessWidget {
  const OurServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: const [
                Expanded(
                  child: OurServiceWidget(
                    image: ImageAssets.newProperties,
                    title: "Our Properties",
                    subtitle: "We have best property Only for you",
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OurServiceWidget(
                    image: ImageAssets.buildingImage,
                    title: "Property for Sale",
                    subtitle:
                        "Best possible price in the shortest possible time.",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: const [
                Expanded(
                  child: OurServiceWidget(
                    image: ImageAssets.maintainanceImage,
                    title: "Property Maintenance",
                    subtitle:
                        "Expert maintenance and compliance to protect your asset.",
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OurServiceWidget(
                    image: ImageAssets.rentImage,
                    title: "Property for Rent",
                    subtitle: "Would you like to search in the following?",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
