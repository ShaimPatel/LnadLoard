import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/views/Properties%20Page/all_properties_page.dart';
import 'package:landloard/views/Properties%20Page/widget/commercial_show_data_widget.dart';
import 'package:landloard/views/Properties%20Page/widget/international_show_data_widget.dart';
import 'package:landloard/views/Properties%20Page/widget/latting_show_data_widget.dart';
import 'package:landloard/views/Properties%20Page/widget/properties_data_widget.dart';
import 'package:landloard/views/Properties%20Page/widget/sales_show_data_widget.dart';
import 'package:landloard/views/Tools%20Page/widget/stamp_duty_calculator_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';
import '../HomePage/widgets/sales_widget.dart';

class PropertiesPage extends StatefulWidget {
  const PropertiesPage({super.key});

  @override
  State<PropertiesPage> createState() => _PropertiesPageState();
}

class _PropertiesPageState extends State<PropertiesPage> {
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
                length: 5, // Number of tab sets
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
                        Tab(text: 'All'.toUpperCase()),
                        Tab(text: 'sales'.toUpperCase()),
                        Tab(
                          text: 'lettings'.toUpperCase()
                        ),
                        Tab(text: 'commercial'.toUpperCase()),
                        Tab(
                          text: 'international'.toUpperCase()
                        ),
                      ],
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          // Content for Tab A1
                          AllPropertiesPage(),
                          // Content for Tab A2
                          SalesShowDataWidget(),
                          // Content for Tab A3
                          LattingShowDataWidget(),
                          // A4
                          CommercialShowDataWidget(),
                          //5
                          InternationalShowDataWidget(),

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
