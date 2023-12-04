import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:landloard/res/colors/app_color.dart';

import '../../../res/assets/image_assets.dart';

class CustomerSaysWidget extends StatelessWidget {
  const CustomerSaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
            border: Border.all(color: AppColor.greyColor),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                maxRadius: 40,
                backgroundColor: AppColor.greyColor,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(
                    image: AssetImage(
                      ImageAssets.user1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //? rating
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20,
                itemCount: 5,
                tapOnlyMode: true,
                ignoreGestures: true,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(height: 5),

              const Text(
                "Viorel Bojoga",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                "'We had a Great experience with SMARTLINK ESTATES.    Good and prompt feedback thanks toWe had a Great experience with SMARTLINK ESTATES.    Good and prompt feedback thanks toWe had a Great experience with SMARTLINK ESTATES.    Good and prompt feedback thanks toWe had a Great experience with SMARTLINK ESTATES.    Good and prompt feedback thanks to Jay. He was always in time whenever we asked to see a property, or to have a meeting.'",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
