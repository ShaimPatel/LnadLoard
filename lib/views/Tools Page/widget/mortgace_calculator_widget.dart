// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:landloard/res/utils/utils.dart';
import 'package:landloard/views/Tools%20Page/widget/calculator_widget.dart';

import '../../../res/colors/app_color.dart';
import '../../HomePage/widgets/fetaured_data_widget.dart';

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
  //? Initlization

  TextEditingController purchaseController = TextEditingController();
  TextEditingController depositController = TextEditingController();
  TextEditingController interestController = TextEditingController();
  TextEditingController repaymentController = TextEditingController();

  double monthlyPayment = 0.0;
  String rePayment = "";
  String interestOnly = "";

  double totalPayment = 0.0;
  double totalInterest = 0.0;

  bool isRepaymentSelected = true;
  bool isvisible = false;

//! calculate Mortgage
  double calculateMortgage() {
    double purchaseAmount = double.tryParse(purchaseController.text) ?? 0.0;
    double depositAmount = double.tryParse(depositController.text) ?? 0.0;
    double interestRate = double.tryParse(interestController.text) ?? 0.0;
    double repaymentYears = double.tryParse(repaymentController.text) ?? 0.0;

    double loanAmount = purchaseAmount - depositAmount;
    double monthlyInterestRate = interestRate / 100 / 12;
    double numberOfPayments = repaymentYears * 12;

    if (interestRate == 0.0) {
      return loanAmount / numberOfPayments;
    } else {
      monthlyPayment = (loanAmount * monthlyInterestRate) /
          (1 - pow(1 + monthlyInterestRate, -numberOfPayments));
      return monthlyPayment;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          "Mortgage Calculator",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: AppColor.blueColor.withOpacity(0.5)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Are you looking to buy a property either now or in the near future? Then let us help you quickly and easily calculate the mortgage.",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Simply enter the purchase price, deposit amount, interest rate and repayment period, then the repayment information is calculated instantly.",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "For further information call us today - Click here for contact details.",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(height: 20),
                        Container(
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
                                controller: purchaseController,
                                title: " Purchase Price",
                                hintText: " £ e.g. 500,000",
                              ),
                              CalculatorWidget(
                                controller: depositController,
                                title: " Deposit Amount",
                                hintText: " £ e.g. 750,000",
                              ),
                              CalculatorWidget(
                                controller: interestController,
                                title: "Intrest Rate",
                                hintText: " % e.g. 3.2",
                              ),
                              CalculatorWidget(
                                controller: repaymentController,
                                title: " Repayment Period",
                                hintText: " Year e.g. 25",
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
                                      if (purchaseController.text
                                          .trim()
                                          .isEmpty) {
                                        Utils.toastMessage(
                                            "Enter the Purchase price");
                                      } else if (depositController.text
                                          .trim()
                                          .isEmpty) {
                                        Utils.toastMessage(
                                            "Enter the Deposit amount");
                                      } else if (interestController.text
                                          .trim()
                                          .isEmpty) {
                                        Utils.toastMessage(
                                            "Enter the Intrest rate");
                                      } else if (repaymentController.text
                                          .trim()
                                          .isEmpty) {
                                        Utils.toastMessage(
                                            "Enter the Repayment period");
                                      } else {
                                        double purchaseAmount = double.tryParse(
                                                purchaseController.text) ??
                                            0.0;
                                        double depositAmount = double.tryParse(
                                                depositController.text) ??
                                            0.0;
                                        double interestRate = double.tryParse(
                                                interestController.text) ??
                                            0.0;
                                        int loanTerm = int.tryParse(
                                                repaymentController.text) ??
                                            0;

                                        if (purchaseAmount <= 0 ||
                                            depositAmount < 0 ||
                                            interestRate <= 0 ||
                                            loanTerm <= 0) {
                                          setState(() {
                                            rePayment =
                                                "Please enter valid values for all fields.";
                                          });
                                          return;
                                        }

                                        double loanAmount =
                                            purchaseAmount - depositAmount;
                                        double monthlyInterestRate =
                                            interestRate / 100 / 12;
                                        int numberOfPayments = loanTerm * 12;

                                        double monthlyPayment;
                                        setState(() {
                                          isvisible = true;
                                        });
                                        if (isRepaymentSelected) {
                                          // Monthly Repayment Calculation
                                          monthlyPayment = (loanAmount *
                                                  monthlyInterestRate) /
                                              (1 -
                                                  pow(1 + monthlyInterestRate,
                                                      -numberOfPayments));
                                          totalPayment =
                                              monthlyPayment * numberOfPayments;
                                          totalInterest =
                                              totalPayment - loanAmount;
                                        } else {
                                          // Interest Only Calculation
                                          monthlyPayment = (loanAmount *
                                                  interestRate /
                                                  100) /
                                              12;
                                          totalPayment =
                                              monthlyPayment * numberOfPayments;
                                          totalInterest =
                                              totalPayment - loanAmount;
                                        }

                                        setState(() {
                                          rePayment =
                                              "£${monthlyPayment.toStringAsFixed(2)}";
                                          interestOnly =
                                              "£ ${totalInterest.toStringAsFixed(2)}";
                                        });
                                      }
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Icon(
                                          Icons.calculate,
                                          color: AppColor.blackColor,
                                        ),
                                        Text(
                                          "Calculate".toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.blackColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              // Display Mortgage Result
                              Visibility(
                                visible: isvisible,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text(
                                        "Monthly Costs :",
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
                                            "Repayment",
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
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: rePayment,
                                                border:
                                                    const OutlineInputBorder(),
                                                fillColor: AppColor.whiteColor,
                                                filled: true,
                                              ),
                                              enabled: false,
                                              onChanged: (text) {
                                                print('Entered text: $text');
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
                                            "Interest Only",
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
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText:
                                                    interestOnly.toString(),
                                                border:
                                                    const OutlineInputBorder(),
                                                fillColor: AppColor.whiteColor,
                                                filled: true,
                                              ),
                                              enabled: false,
                                              onChanged: (text) {
                                                print('Entered text: $text');
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
                  )),
            )
          ],
        ));
  }
}
