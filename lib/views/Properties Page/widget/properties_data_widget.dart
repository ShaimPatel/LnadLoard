import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/assets/image_assets.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/Constrians.dart';

class PropertiesDataWidget extends StatefulWidget {
  const PropertiesDataWidget({super.key});

  @override
  State<PropertiesDataWidget> createState() => _PropertiesDataWidgetState();
}

class _PropertiesDataWidgetState extends State<PropertiesDataWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: double.maxFinite,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColor.greyColor,
                      )),
                  // color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        fit: StackFit.loose,
                        children: [
                          Container(
                            height: 180,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: const ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Image(
                                image: AssetImage(ImageAssets.img2),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0, // Adjust the left position as needed
                            top: 0, // Adjust the top position as needed
                            child: CornerBanner(
                              bannerPosition: CornerBannerPosition.topLeft,
                              bannerColor: Colors.blue,
                              child: Text("Hello, World!"),
                            ),
                          ),

                          //! Icons
                          Positioned(
                              bottom: 10,
                              right: 20,
                              child: Row(
                                children: const [
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.facebook,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  CircleAvatar(
                                    backgroundColor: AppColor.blueColor,
                                    child: Icon(
                                      Icons.facebook,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  CircleAvatar(
                                    backgroundColor: AppColor.blackColor,
                                    child: Icon(
                                      Icons.facebook,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(height: 20),

                      //!
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '\$ 600,000',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.greenColor),
                                ),
                                CustomeDividerWidget(
                                  thickness: 3,
                                  color: AppColor.blackColor,
                                  height: 4,
                                  endIndent: 10,
                                  indent: 10,
                                ),
                                Container(
                                  height: 2,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                    color: AppColor.greenColor,
                                  ),
                                )
                              ],
                            ),
                            Elevated_Button(
                              "sales".toUpperCase(),
                              () => null,
                              70.0,
                              12,
                              AppColor.whiteColor,
                              AppColor.greyColor,
                              25,
                            ),
                          ],
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'E15 4AT, Stratford, London',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.greyColor),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Haven Road, Rainham',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColor.blackColor),
                        ),
                      ),

                      //! Three
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              Icon(Icons.bed_outlined),
                              SizedBox(width: 4),
                              Text("3 beds"),
                              SizedBox(width: 10),
                              Icon(Icons.chair),
                              SizedBox(width: 4),
                              SizedBox(width: 10),
                              Text("2 Reception"),
                              SizedBox(width: 10),
                              Icon(Icons.bed_outlined),
                              SizedBox(width: 4),
                              Text("1 baths")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //!
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Elevated_Button(
                          "See details",
                          () => null,
                          150.0,
                          15,
                          AppColor.whiteColor,
                          AppColor.greenColor,
                          25,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  //!
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
