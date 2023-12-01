import 'package:flutter/material.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Professional, Friendly & Energetic Estate Agent",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greenColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
                // Divider
                CustomeDividerWidget(
                  color: AppColor.greyColor,
                  endIndent: 5,
                  indent: 5,
                  height: 1,
                  thickness: 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 10, right: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage(
                          ImageAssets.services,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "We think nationally. We act locally and regionally",
                  style: TextStyle(
                    color: AppColor.greenColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                    "Smart Link Estates is an independent and local Sales and Lettings Agency based in the heart of east London. We take great pride in providing comprehensive bespoke residential and commercial property services, utilising our extensive knowledge of the local property market."),
                const SizedBox(height: 15),
                const Text(
                    "Our team at Smart Link Estates work tirelessly to ensure that you receive the greatest value for your property with minimal hassle. If you’re looking for an agency with a difference, to either sell or let your property, manage your one-off rental or play an active role in the management of your portfolio of properties, you’re in the right place. Our strict code of practice includes ensuring that all our services are carried with honesty and in a friendly manner, so clients can have peace of mind knowing that they have made the right decision in trusting their property with us."),
                const SizedBox(height: 15),
                const Text(
                    "We believe that Landlords should stay in control of their property, so we offer regular updates, both verbally and in writing, along with comprehensive inspection reports. We offer Free Valuations and strictly work on No sale No fee basis for your peace of mind. We are constantly looking for innovative ways to make our service even better but without increasing the costs. We are member of the PRS so you can be confident that your property is in safe hands. Start your search now, register with us for property alerts, or request a free sales or rental valuation of your property.")
              ],
            ),
          ),
        ));
  }
}
