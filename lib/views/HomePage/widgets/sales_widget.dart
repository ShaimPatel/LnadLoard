import 'package:flutter/material.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/Constrians.dart';

class SalesWidget extends StatelessWidget {
  const SalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Container(
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.maxFinite,
                  // color: Colors.red,
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField_Design(
                            searchController.text,
                            "Post Code or City. e.g Lo",
                            searchController,
                            true,
                          ),
                        ),
                        Container(
                          height: 55,
                          width: 70,
                          decoration: BoxDecoration(
                              color: AppColor.greenColor,
                              border: Border.all(color: Colors.grey),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Icon(
                            Icons.search,
                            size: 40,
                            color: AppColor.yellowColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: AppColor.greenColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.phone_android_outlined,
                            color: AppColor.whiteColor,
                          ),
                          Text(
                            "Find out your home's value",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.whiteColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Get a free online estimate of your home's current value",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: elevatedBorderButton(
                          "enquire with us".toUpperCase(),
                          () => null,
                          200.0,
                          14,
                          AppColor.yellowColor,
                          AppColor.greenColor,
                          5,
                          AppColor.yellowColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
