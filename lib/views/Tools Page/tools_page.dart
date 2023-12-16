import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/views/Tools%20Page/widget/mortgace_calculator_widget.dart';
import 'package:landloard/views/Tools%20Page/widget/rental_yield_calculator_widget.dart';
import 'package:landloard/views/Tools%20Page/widget/stamp_duty_calculator_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';

class ToolsPage extends StatefulWidget {
  const ToolsPage({super.key});

  @override
  State<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends State<ToolsPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = true;
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  void scrollTo() {
    _scrollController.animateTo(0.0,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
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
              onPressed: scrollTo,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.8,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: DefaultTabController(
                length: 3, // Number of tab sets
                child: Column(
                  children: [
                    TabBar(
                      unselectedLabelColor: AppColor.greyColor,
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      physics: const BouncingScrollPhysics(),
                      isScrollable: true,
                      labelColor: AppColor.greenColor,
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: [
                        Tab(text: 'Mortgage Calculator'.toUpperCase()),
                        Tab(text: 'Rental Yield Calculator'.toUpperCase()),
                        Tab(
                          text: 'Stamp Duty Calculator'.toUpperCase(),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content for Tab A1
                          MortgageCalculatorWidget(
                            controller: _scrollController,
                          ),
                          // Content for Tab A2
                          RentalYieldCalculatorWidget(
                            controller: _scrollController,
                          ),
                          // Content for Tab A3
                          StampDutyCalculatorWidget(
                            controller: _scrollController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
