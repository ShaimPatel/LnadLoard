import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/colors/app_color.dart';

class BuyersWidget extends StatelessWidget {
  const BuyersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 3.6,
      width: double.maxFinite,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Text(
              "Buyers",
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
              "Guide to buying a property",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "A step-by-step guide to each stage of buying a property",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "we will help you all the way",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP1 : Register to get your competitive advantage",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """The London sales market can be extremely competitive and fast-moving, but we can give
buyers that register with us an unfair advantage.
By registering your requirements, we can help you be the first through the door of newly listed homes.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP2 : Are you selling too?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """If your move will involve selling your current home it is advisable to advertise your current property before looking for a new home.
Being ready to sell means you are less likely to miss out on your dream home""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP3 : Find the right property",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """With hundreds of new listings each week, we will help you find the right property.
We can also keep you constantly up-to-date via email and text alerts, even before properties get listed on all the top property portals. """,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP4 : Viewings",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """Book your viewing online or in the office.
We will chauffeur you to your viewings ensuring you arrive in a relaxed frame of mind and accompany you throughout so that we are on hand to answer any questions immediately and advise where necessary. """,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP5 : Making an offer",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              """Once you find your perfect property you can make an offer online or with your agent.
Let us know if there any special conditions of the offer and we will communicate this to the seller.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const Text(
              """At this point you may need to demonstrate that you can proceed by providing evidence of your mortgage in principle and solicitor details.
There are no legal obligations on either side until contracts are signed.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP6 : Offer accepted",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Once you accept an offer we will do the following:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Prepare a memorandum of sale",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Confirm the agreed price with all parties",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Confirm your solicitor & mortgage details",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "You will now need to instruct your solicitor to proceed with the conveyancing process and your mortgage broker to proceed with your application.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP7 : Conveyancing",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "As part of the conveyancing process your solicitor will do the following:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Raise any enquiries on receipt of the draft contract from the seller’s solicitor",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Request their own local searches",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Agree on a date for exchange of contracts",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We will assist your solicitor and negotiate throughout the process, keeping you informed every step of the way.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP8 : Survey and mortgage offer",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "A survey of the property will be booked by a surveyor on behalf of the mortgage lender to identify any structural problems and advise on the property’s value.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "After the mortgage valuation report is received, a formal mortgage offer will be sent to you and your solicitor which you will need to sign before it is returned.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "There are no legal obligations until contracts are signed.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP9 : Exchange of contracts",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Exchange of contracts occurs when all enquiries have been confirmed and agreed.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              """ Once the contract has been signed by both parties the deposit (usually 10% of the purchase price) will be transferred online or paid in the form of a banker’s draft from your solicitor to the seller’s solicitor.""",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "The completion date is then set by mutual agreement.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "STEP10 : Completion",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Completion is when the residual monies (usually 90%) are transferred from your solicitor tothe seller’s solicitor’s account.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "We will release the keys once the money has cleared in the seller’s account.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Congratulations, you are now the legal owner of your new home!",
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
