import 'package:flutter/material.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';

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
              Navigator.pop(context);
            },
          ),

          CustomeDividerWidget(
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
                      },
                    ),
                    ListTile(
                      title: const Text('Lettings'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Commercial'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('International'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                value: "step.title",
              ),
            ],
          ),

          CustomeDividerWidget(
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
            },
          ),
          CustomeDividerWidget(
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
            },
          ),
          CustomeDividerWidget(
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
            },
          ),
          CustomeDividerWidget(
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
                      },
                    ),
                    ListTile(
                      title: const Text('Right to Rent'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.red,
                    )
                  ],
                ),
                value: "step.title",
              ),
            ],
          ),
          CustomeDividerWidget(
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
            },
          ),
          CustomeDividerWidget(
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
            },
          ),
        ],
      ),
    );
  }
}
