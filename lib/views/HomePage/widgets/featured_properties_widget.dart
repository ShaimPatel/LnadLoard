import 'package:flutter/material.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/Constrians.dart';
import 'package:super_banners/super_banners.dart';

import '../../Properties Page/all_properties_page.dart';

class FeaturedPropertiesWidget extends StatefulWidget {
  const FeaturedPropertiesWidget({super.key});

  @override
  State<FeaturedPropertiesWidget> createState() =>
      _FeaturedPropertiesWidgetState();
}

class _FeaturedPropertiesWidgetState extends State<FeaturedPropertiesWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.90,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            "Featured Properties",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.greenColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          CustomeDividerWidget(
            height: 1,
            color: AppColor.greyColor,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
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
                          // fit: StackFit.expand,
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
                                  image: AssetImage(ImageAssets.img1),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 0, // Adjust the left position as needed
                              top: 0, // Adjust the top position as needed
                              // child: Transform.rotate(
                              //   angle:
                              //       -0.75, // Adjust the rotation angle as needed
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(bottom: 40),
                              //     child: Container(
                              //       decoration: const BoxDecoration(
                              //         color: Colors.red,
                              //       ),
                              //       padding: const EdgeInsets.symmetric(
                              //           horizontal: 15, vertical: 10),
                              //       child: const Center(
                              //         child: Text(
                              //           'For Sale',
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              child: CornerBanner(
                                bannerPosition: CornerBannerPosition.topLeft,
                                bannerColor: Colors.red,
                                elevation: 10,
                                child: Text("For Sale"),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
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
                              AppColor.greenColor,
                              25,
                            ),
                          ],
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
                        Center(
                          child: Elevated_Button(
                            "See details",
                            () => null,
                            130.0,
                            15,
                            AppColor.whiteColor,
                            AppColor.greenColor,
                            25,
                          ),
                        ),
                      ],
                    ),
                    //!
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Elevated_Button(
            "View all properties",
            () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const AllPropertiesPage())),
            150.0,
            15,
            AppColor.whiteColor,
            AppColor.greenColor,
            25,
          ),
        ],
      ),
    );
  }
}
