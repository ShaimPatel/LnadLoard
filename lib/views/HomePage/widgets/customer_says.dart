// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:landloard/res/colors/app_color.dart';

class CustomerSaysSection extends StatelessWidget {
  final AssetImage userImage;
  final double ratingNumber;
  final String userName;
  final String userFeedback;
  const CustomerSaysSection({
    Key? key,
    required this.userImage,
    required this.ratingNumber,
    required this.userName,
    required this.userFeedback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.4,
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
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundColor: AppColor.greyColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image(
                          image: userImage,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //? rating
                    RatingBar.builder(
                      initialRating: ratingNumber,
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
                        debugPrint(rating.toString());
                      },
                    ),
                    const SizedBox(height: 5),

                    Text(
                      userName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),

                    Text(
                      userFeedback,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
