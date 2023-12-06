// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:landloard/res/colors/app_color.dart';

import '../../HomePage/widgets/featured_properties_widget.dart';

class RentalYieldCalculatorWidget extends StatefulWidget {
  ScrollController? controller;

  RentalYieldCalculatorWidget({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<RentalYieldCalculatorWidget> createState() =>
      _RentalYieldCalculatorWidgetState();
}

class _RentalYieldCalculatorWidgetState
    extends State<RentalYieldCalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: widget.controller,
        physics: const BouncingScrollPhysics(),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Rental Yield Calculator",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blueColor.withOpacity(0.5)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Are you looking to buy a property either now or in the near future? Then let us help you quickly and easily calculate the Rental Yield.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "Rental Yield is your client's annual rental income expressed as a percentage of their property value.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "This calculator can be used to compare yields from different properties to assist your client in determining which is the most suitable as a Buy to Let investment.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "simply enter the purchase price and monthly rent then the rental yield is calculated instantly.",
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
