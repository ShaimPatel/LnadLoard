// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:landloard/views/Tools%20Page/widget/calculator_widget.dart';

import '../../../res/colors/app_color.dart';
import '../../HomePage/widgets/featured_properties_widget.dart';

class StampDutyCalculatorWidget extends StatefulWidget {
  ScrollController? controller;

  StampDutyCalculatorWidget({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<StampDutyCalculatorWidget> createState() =>
      _StampDutyCalculatorWidgetState();
}

class _StampDutyCalculatorWidgetState extends State<StampDutyCalculatorWidget> {
  TextEditingController purchesController = TextEditingController();
  bool isChecked = false;

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
              "Stamp Duty Calculator",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blueColor.withOpacity(0.5)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Are you looking to buy a property either now or in the near future? Then let us help you quickly and easily calculate the Stamp Duty.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "Simply enter the purchase price then the stamp duty information is calculated instantly.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "For further information call us today - Click here for contact details.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: AppColor.greenColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: AppColor.yellowColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        )),
                  ),
                  const SizedBox(height: 25),
                  //!
                  CalculatorWidget(
                    controller: purchesController,
                    title: " Purchase Price",
                    hintText: " £ e.g. 500,000",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        activeColor: AppColor.yellowColor,
                        value: isChecked,
                        // fillColor: Colors.red,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return AppColor
                                  .yellowColor; // Color when checkbox is checked
                            }
                            return AppColor
                                .whiteColor; // Color when checkbox is unchecked
                          },
                        ),
                        checkColor: AppColor.greenColor,
                      ),
                      const Text(
                        "Property is a buy-to-let or second home",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  //!
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 25),
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: AppColor.yellowColor,
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.calculate,
                              size: 20,
                              color: AppColor.blackColor,
                            ),
                            Text(
                              "Calculate".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.blackColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const FeaturedPropertiesWidget(),
          ],
        ),
      ),
    );
  }
}
