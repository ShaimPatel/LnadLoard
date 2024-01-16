// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:landloard/res/colors/app_color.dart';

import '../../../res/utils/utils.dart';
import '../../HomePage/widgets/fetaured_data_widget.dart';
import 'calculator_widget.dart';

class RentalYieldCalculatorWidget extends StatefulWidget {
  final ScrollController? controller;

  const RentalYieldCalculatorWidget({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<RentalYieldCalculatorWidget> createState() =>
      _RentalYieldCalculatorWidgetState();
}

class _RentalYieldCalculatorWidgetState
    extends State<RentalYieldCalculatorWidget> {
  //! Initlization

  TextEditingController purchesController = TextEditingController();
  TextEditingController monthlyRentController = TextEditingController();

  final FocusNode _purchasesFocusNode = FocusNode();
  final FocusNode _monthlyRentfocusNode = FocusNode();

  double annualRent = 0.0;
  double rentalYield = 0.0;

  bool isvisible = false;

  //! Calculate RentalYield
  double calculateRentalYield() {
    double propertyPurchaseCost =
        double.tryParse(purchesController.text) ?? 0.0;
    double monthlyRent = double.tryParse(monthlyRentController.text) ?? 0.0;
    annualRent = monthlyRent * 12;
    double rentalYield = (annualRent / propertyPurchaseCost) * 100;
    return rentalYield;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Rental Yield is your client's annual rental income expressed as a percentage of their property value.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "This calculator can be used to compare yields from different properties to assist your client in determining which is the most suitable as a Buy to Let investment.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "simply enter the purchase price and monthly rent then the rental yield is calculated instantly.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.5,
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
                              focusNode: _purchasesFocusNode,
                            ),
                            CalculatorWidget(
                              controller: monthlyRentController,
                              title: " Monthly Rent",
                              hintText: " £ e.g. 750,000",
                              focusNode: _monthlyRentfocusNode,
                            ),

                            //!
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 25),
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onPressed: () {
                                    if (purchesController.text.trim().isEmpty) {
                                      isvisible = false;
                                      Utils.toastMessage(
                                          "Enter the Purchase price");
                                    } else if (monthlyRentController.text
                                        .trim()
                                        .isEmpty) {
                                      isvisible = false;
                                      Utils.toastMessage(
                                          "Enter the Monthly rent");
                                    } else {
                                      rentalYield = calculateRentalYield();
                                      setState(() {
                                        isvisible = true;
                                        annualRent = double.tryParse(
                                                monthlyRentController.text)! *
                                            12;
                                      });
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                            const SizedBox(height: 20),

                            //! Show thw Result
                            Visibility(
                              visible: isvisible,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(
                                      "Results :",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  //!
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Annual Rent",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.whiteColor,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "£ ${annualRent.toStringAsFixed(2)}",
                                              border:
                                                  const OutlineInputBorder(),
                                              fillColor: AppColor.whiteColor,
                                              filled: true,
                                            ),
                                            enabled: false,
                                            onChanged: (text) {
                                              debugPrint('Entered text: $text');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Rental Yield",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.whiteColor,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "% ${rentalYield.toStringAsFixed(2)} ",
                                              border:
                                                  const OutlineInputBorder(),
                                              fillColor: AppColor.whiteColor,
                                              filled: true,
                                            ),
                                            enabled: false,
                                            onChanged: (text) {
                                              debugPrint('Entered text: $text');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const FeaturedDataWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
