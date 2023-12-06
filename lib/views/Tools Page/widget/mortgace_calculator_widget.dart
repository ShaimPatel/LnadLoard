// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../res/colors/app_color.dart';
import '../../HomePage/widgets/featured_properties_widget.dart';

class MortgageCalculatorWidget extends StatefulWidget {
  ScrollController? controller;
  MortgageCalculatorWidget({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<MortgageCalculatorWidget> createState() =>
      _MortgageCalculatorWidgetState();
}

class _MortgageCalculatorWidgetState extends State<MortgageCalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        controller: widget.controller,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Mortgage Calculator",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blueColor.withOpacity(0.5)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Are you looking to buy a property either now or in the near future? Then let us help you quickly and easily calculate the mortgage.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "Simply enter the purchase price, deposit amount, interest rate and repayment period, then the repayment information is calculated instantly.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "For further information call us today - Click here for contact details.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.purple,
            ),
            const FeaturedPropertiesWidget(),
          ],
        ),
      ),
    );
  }
}
