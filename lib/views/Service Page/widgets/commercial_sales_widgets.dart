import 'package:flutter/material.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';

import '../../../res/colors/app_color.dart';

class CommercialSalesWidgets extends StatelessWidget {
  const CommercialSalesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.1,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 50),
            Text(
              "Commercial Sales",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            SizedBox(height: 5),
            CustomeDividerWidget(
              color: AppColor.greenColor,
            ),
            SizedBox(height: 10),
            Text(
              "Smart Link Estates provide a bespoke service advising you on the sale, leasing, management and acquisition of commercial property.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "We work closely with you to formulate the perfect strategy which will support your business objectives.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "Additionally, we also offer a search service to help you find the best property available on the market.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "We specialise in Commercial Property Acquisitions & Lettings",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "We can assist you in finding the perfect property within a range of industry sectors including :",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "Offices",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Restaurants",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Retail",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Industrial",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Educational",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Leisure",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Land",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "Our Commercial Selling Fees (terms & conditions apply)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "SOLE AGENCY (T/C apply)",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "MULTIPLE (T/C apply)",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
