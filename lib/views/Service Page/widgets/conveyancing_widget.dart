import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/colors/app_color.dart';

class ConveyancingWidget extends StatelessWidget {
  const ConveyancingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.35,
      color: AppColor.whiteColor,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 15),
            Text(
              "Conveyancing",
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
            SizedBox(height: 15),
            Text(
              "Smart Link Estates can help with your conveyancing What is conveyancing?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              """Conveyancing involves the legal transfer of home ownership from the seller to the buyer. The whole conveyancing process starts when an offer on a house from a buyer is accepted by the seller. The process completes when the house keys are handing over to the new buyer. Both sellers and buyers need to go through the conveyancing process. It is always a good idea to choose your conveyancer or solicitor as early as possible, around the same time that you choose your estate agent, as this will help reduce delays.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Who does the conveyancing?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              """Whether you are selling or buying, a solicitor or conveyancer will conduct the conveyancing process. There are a number of different providers who can carry out the conveyancing and as your estate agent, we will often recommend a provider of good repute who is familiar with our business, our processes and our staff in order to make the process as smooth as possible. There is however, no obligation to use the recommended suppliers, you can select your own conveyancer if you prefer.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              """Smart Link Estates are connected by a network of local conveyancing advisors. We can arrange a no obligation appointment for you whether buying, selling, renting or considering being a landlord.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              """Please note that you are under no obligation to use any of the services of these recommended conveyancers.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
