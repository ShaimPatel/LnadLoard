import 'package:flutter/material.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/AboutUs%20Page/about_us_page.dart';
import 'package:landloard/views/ContactUs%20Page/contact_us_page.dart';
import 'package:landloard/views/HomePage/home_page.dart';
import 'package:landloard/views/LandLord%20Page/landlord_page.dart';
import 'package:landloard/views/Properties%20Page/commercial_page.dart';
import 'package:landloard/views/Properties%20Page/international_page.dart';
import 'package:landloard/views/Properties%20Page/sales_page.dart';
import 'package:landloard/views/Service%20Page/service_page.dart';
import 'package:landloard/views/Tenants%20Page/right_to_rent_page.dart';
import 'package:landloard/views/Tenants%20Page/tenants_letting_guide_page.dart';
import 'package:landloard/views/Tools%20Page/tools_page.dart';

import '../../views/Properties Page/lettings_page.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 220,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.greenColor,
            ),
            child: Image(
              image: AssetImage(
                ImageAssets.smartlink,
              ),
            ),
          ),

          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex) => const HomePage()));
            },
          ),

          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          //? Properties
          ExpansionPanelList.radio(
            elevation: 0,
            animationDuration: kThemeAnimationDuration,
            dividerColor: AppColor.forgrButtonColor,
            children: [
              ExpansionPanelRadio(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text(
                      "Properties",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                body: Column(
                  children: [
                    ListTile(
                      title: const Text('Sales'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) => const SalesPage()));
                      },
                    ),
                    ListTile(
                      title: const Text('Lettings'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) => const LattingsPage()));
                      },
                    ),
                    ListTile(
                      title: const Text('Commercial'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) => const CommercialPage()));
                      },
                    ),
                    ListTile(
                      title: const Text('International'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) => const InternationalPage()));
                      },
                    ),
                  ],
                ),
                value: "step.title",
              ),
            ],
          ),

          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ListTile(
            title: const Text(
              'Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex) => const ServicePage()));
            },
          ),
          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ListTile(
            title: const Text(
              'Tools',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex) => const ToolsPage()));
            },
          ),
          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ListTile(
            title: const Text(
              'Landlord',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (contex) => const LandLoardPage()));
            },
          ),
          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ExpansionPanelList.radio(
            elevation: 0,
            animationDuration: kThemeAnimationDuration,
            dividerColor: AppColor.forgrButtonColor,
            children: [
              ExpansionPanelRadio(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text(
                      "Tanants",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                body: Column(
                  children: [
                    ListTile(
                      title: const Text('Tenants Letting Guide'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) =>
                                const TenantsLettingGuidePage()));
                      },
                    ),
                    ListTile(
                      title: const Text('Right to Rent'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (contex) => const RightToRentPage()));
                      },
                    ),
                  ],
                ),
                value: "step.title",
              ),
            ],
          ),
          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ListTile(
            title: const Text(
              'Abouts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex) => const AboutUsPage()));
            },
          ),
          const CustomeDividerWidget(
            height: 4,
            thickness: 1,
            color: AppColor.greyColor,
            indent: 15,
            endIndent: 20,
          ),
          ListTile(
            title: const Text(
              'Contacts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (contex) => const ContactUsPage()));
            },
          ),
        ],
      ),
    );
  }
}
