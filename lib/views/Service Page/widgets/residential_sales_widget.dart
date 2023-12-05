import 'package:flutter/material.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/Constrians.dart';

class ResidentialSalesWidgets extends StatelessWidget {
  const ResidentialSalesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 2.35,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Residential Sales ",
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
              "Selling your home is a definitely a journey, and one that we as agents want to guide you through. If you have sold properties before or are thinking of selling for the first time, we want to make sure we can give you the correct advice information to guide and help you sell in the quickest time, with the least hassle and for the best price achievable.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "First step of the selling process is very important. Choosing an estate agent to sell your house and we advice starting this research early as there are several different options. Before booking your valuation you should make sure you find the agent, you believe, can do the best job for you.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "There are two different types of agents to choose from such as, online-only agents, and sole traders for you to choose from, all with different costs and benefits.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "A good agent will help you to get the best value for your property, save you time and save you stress, where as a poor agent could do the exact opposite, charging you less but delivering a lower price at more hassle.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "It is important the estate agent you choose, you can trust to put your best interests at heart. So how do you get started to find the perfect agent for you?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Create a shortlist of estate agents",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. You can do this by getting a list of agents to choose from down to three, then invite them out to do a valuation. To do this you should:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "2. Ask trusted friends and family – nothing is more powerful than someone you know offering their recommendation from recent experience",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "3. Compare local agents based on their recent reviews online. After friends and family, other consumers are your next best point of reference",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "4. Check they sell properties like yours. In your postcode, in your value range and of your property type.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "5. Look at how they market a property. Will they give you maximum exposure? Are their property photographs well taken? Do you believe they will market yours effectively?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "6. Always check their viewings policy. Make sure they do not charge you for extras like this. A great agent will accompany all viewings where possible to understand the buyers’ needs and sell to them accordingly.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Making your final decision",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Choose an agent based on how you feel they will look after you during the entire process of the sale, not just based on fee. Many agents are optimistic with their valuation to win your business, only to reduce the price later. Make sure you are confident an agent has used comparable evidence and recent transaction examples when they give you your price.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "You may also want to consider agents who offer additional services, such as sales progression, doing more to help ensure your sale goes through once an offer is accepted.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "An agent who works hard on your behalf to get you the best price, can save you a lot of money in the long run. Make sure you “get on” with the valuer that comes out and you trust them. Your relationship with your agent is one of the most important things so you must feel confident they will pick up the phone when you need and help you get all the way to completion.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Our Residential Selling Fees  ",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "SOLE AGENCY 1%",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "MULTIPLE 2%",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );

   
  }
}
