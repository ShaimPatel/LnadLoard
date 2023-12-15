import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../global/app_data.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';

class LandLoardPage extends StatefulWidget {
  const LandLoardPage({super.key});

  @override
  State<LandLoardPage> createState() => _LandLoardPageState();
}

class _LandLoardPageState extends State<LandLoardPage> {
  //!
  final ScrollController scrollController = ScrollController();
  bool _isVisible = false;
  bool? is_Expanded = false;

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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          controller: scrollController,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Landlord",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColor.greenColor),
                ),
              ),
              CustomeDividerWidget(
                color: AppColor.greenColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ExpansionPanelList.radio(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      is_Expanded = !isExpanded;
                    });
                  },
                  elevation: 2,
                  initialOpenPanelValue: false,
                  animationDuration: kThemeAnimationDuration,
                  dividerColor: AppColor.greyColor,
                  children: AppData.landlordFaq
                      .asMap()
                      .entries
                      .map<ExpansionPanelRadio>(
                    (MapEntry<int, Map<String, String>> entry) {
                      final int index = entry.key;
                      final Map<String, String> panel = entry.value;

                      return ExpansionPanelRadio(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8)),
                                      color: AppColor.greenColor,
                                    )),
                                Expanded(
                                  child: Html(
                                      data: AppData.landlordFaq[index]
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
                                    height:
                                        MediaQuery.of(context).size.width * 1,
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
                                      data: AppData.landlordFaq[index]
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
            ],
          ),
        ));
  }
}
