import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../global/Widgets/divider_widget.dart';
import '../../global/app_data.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';

class RightToRentPage extends StatefulWidget {
  const RightToRentPage({super.key});

  @override
  State<RightToRentPage> createState() => _RightToRentPageState();
}

class _RightToRentPageState extends State<RightToRentPage> {
  bool _isVisible = false;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = true;
        });
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  void scrollToTop() {
    scrollController.animateTo(0.0,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Image(
          image: AssetImage(
            ImageAssets.smartlink,
          ),
          height: 160,
          width: 160,
        ),
      ),
      endDrawer: const CustomDrawerWidget(),
      floatingActionButton: _isVisible
          ? FloatingActionButton(
              onPressed: scrollToTop,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            //! 1
            const Center(
              child: Text(
                "Tenants Letting Guide",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greenColor),
              ),
            ),
            const CustomeDividerWidget(
              color: AppColor.greenColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children: AppData.rightToRent
                    .asMap()
                    .entries
                    .map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;
                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.rightToRent[index]
                                            ["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.tenantHelp[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //!2
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Client Money\n Protection",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greenColor),
              ),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Smart Link Estates Client Money Protection is provided by Client Money Protection (CMP). This ensures we have the necessary protection for monies held in our client account. For further information please contact us',
                      style: TextStyle(fontStyle: FontStyle.normal),
                    ),
                    TextSpan(
                      text: 'info@smartlinkestates.com',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //! 3
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Valuation",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greenColor),
              ),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children: AppData.valuationData
                    .asMap()
                    .entries
                    .map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.valuationData[index]
                                            ["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.valuationData[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //! 4
            const SizedBox(height: 40),
            const Text(
              "Frequently Asked\n Questions",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children: AppData.faq.asMap().entries.map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.faq[index]["heading"] ?? ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.faq[index]['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //! 5

            const SizedBox(height: 40),
            const Text(
              "Tenant Support",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),

            //! 6 Moving in

            const SizedBox(height: 40),
            const Text(
              "Moving in",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children:
                    AppData.movingIn.asMap().entries.map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.movingIn[index]["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.movingIn[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //! 7 Paying Rent
            const SizedBox(height: 40),
            const Text(
              "Paying Rent",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children:
                    AppData.payingRent.asMap().entries.map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.payingRent[index]
                                            ["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.payingRent[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //! 8

            const SizedBox(height: 40),
            const Text(
              "Moving Out",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 2,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: AppColor.greyColor,
                children:
                    AppData.movingOut.asMap().entries.map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;
                    // final Map<String, String> panel = entry.value;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.movingOut[index]["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.movingOut[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            //! 9

            const SizedBox(height: 40),
            const Text(
              "Deposit",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const CustomeDividerWidget(
              color: AppColor.greyColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                elevation: 1,
                initialOpenPanelValue: false,
                animationDuration: kThemeAnimationDuration,
                dividerColor: Colors.transparent,
                children:
                    AppData.deposit.asMap().entries.map<ExpansionPanelRadio>(
                  (MapEntry<int, Map<String, String>> entry) {
                    final int index = entry.key;

                    return ExpansionPanelRadio(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: Html(
                                    data: AppData.deposit[index]["heading"] ??
                                        ''),
                              ),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                  // height:
                                  //     MediaQuery.of(context).size.height /
                                  //         3,
                                  // width: 10,
                                  decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                color: AppColor.greenColor,
                              )),
                              Expanded(
                                child: Html(
                                    data: AppData.deposit[index]
                                            ['description'] ??
                                        ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      value: '$index',
                    );
                  },
                ).toList(),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
