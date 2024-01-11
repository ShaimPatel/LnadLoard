import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/Service%20Page/widgets/barrow_widget.dart';
import 'package:landloard/views/Service%20Page/widgets/buyers_widget.dart';
import 'package:landloard/views/Service%20Page/widgets/enquire_widget.dart';
import 'package:landloard/views/Service%20Page/widgets/landlords_widget.dart';
import 'package:landloard/views/Service%20Page/widgets/let_and_management_widgets.dart';
import 'package:landloard/views/Service%20Page/widgets/residential_sales_widget.dart';
import 'package:landloard/views/Service%20Page/widgets/service_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';
import '../HomePage/widgets/customer_feedback_widget.dart';
import 'widgets/Mortgage_widget.dart';
import 'widgets/commercial_sales_widgets.dart';
import 'widgets/conveyancing_widget.dart';
import 'widgets/our_services_table_widget.dart';
import 'widgets/property_maintenance_widget.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
//?
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
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //! 1 section ..
            const ServicesWidgets(),
            //! 2 section
            const LandLordsWidget(),
            //! 3 Residential Sales
            const ResidentialSalesWidgets(),
            //! 4 Enquire
            const EnquireWidgets(),
            //! 5  Commercial Sales
            const CommercialSalesWidgets(),
            //! 6 Let and Management
            const LetAndManagementWidgets(),

            //!  7 Our service
            const Text(
              "Our Services ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const SizedBox(height: 5),
            CustomeDividerWidget(
              color: AppColor.greenColor,
              endIndent: 10,
            ),
            const SizedBox(height: 10),
            const OurServiceTableWidget(),

            //!  8  Property Maintenance
            const PropertyMaintenanceWidget(),

            //! 9 Buyers

            const BuyersWidget(),

            //! 10 Mortgage
            const MortgageWidget(),

            //! 11 Speak to an expert, local mortgage adviser

            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: AppColor.whiteColor,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      "Speak to an expert, local mortgage adviser",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    const SizedBox(height: 5),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      """Smart Link Estates are connected by a network of local financial advisors. We can arrange a no obligation appointment for you whether buying, selling, renting or considering being a landlord.""",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: AppColor.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //! 12 How much can you borrow?

            const BarrowWidget(),

            //! 13 Conveyancing
            const ConveyancingWidget(),

            //! 14 Customer Says
            const CustomerFeedbackWidget(),
          ],
        ),
      ),
    );
  }
}
