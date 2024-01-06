import 'package:flutter/material.dart';
import 'package:landloard/Models/properties_data_model.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/constrians.dart';
import 'package:provider/provider.dart';
import 'package:super_banners/super_banners.dart';

import '../../../Provider/properties_provider.dart';
import '../../Properties Page/properties_page.dart';

class FeaturedPropertiesWidget extends StatefulWidget {
  const FeaturedPropertiesWidget({super.key});

  @override
  State<FeaturedPropertiesWidget> createState() =>
      _FeaturedPropertiesWidgetState();
}

class _FeaturedPropertiesWidgetState extends State<FeaturedPropertiesWidget> {
  List imageList = [
    ImageAssets.img1,
    ImageAssets.img2,
    ImageAssets.img3,
    ImageAssets.img4,
    ImageAssets.img5,
    ImageAssets.img6,
  ];

  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add the alpha value if it's missing
    }
    try {
      int parsedColor = int.parse(hexColor, radix: 16);
      return Color(parsedColor);
    } catch (e) {
      print('Error parsing color: $e');
      return Colors.transparent; // Return a default color in case of an error
    }
  }

  @override
  void initState() {
    Provider.of<PropertiesProvider>(context, listen: false)
        .fetchFeaturedPropertiesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("This  is Called Every Time :: ");
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
          Consumer<PropertiesProvider>(
            builder: (context, valueFeaturedData, child) =>
                FutureBuilder<FeaturedPropertiesModel>(
              future: valueFeaturedData.fetchFeaturedPropertiesData(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Text('No connection state yet');
                  case ConnectionState.waiting:
                    return Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.6,
                      color: Colors.red.shade300,
                    );
                  case ConnectionState.active:
                    return const Text('Connection is active');
                  case ConnectionState.done:
                    if (snapshot.hasError || snapshot.data == null) {
                      return Text('Error: ${snapshot.error ?? "No Data"}');
                    } else if (!snapshot.hasData) {
                      return const Text('No Data');
                    } else {
                      //! Use the data from the snapshot to build your UI
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data?.data!.results!.length,
                            itemBuilder: (ctx, index) {
                              var showData =
                                  snapshot.data?.data!.results![index];
                              Color? containerColor = getColorFromHex(snapshot
                                      .data?.data!.results![index].tag!.color ??
                                  "#FFFFFF");
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: AppColor.greyColor,
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 180,
                                            width: double.maxFinite,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20))),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(15),
                                                      topRight:
                                                          Radius.circular(15)),
                                              child: Image(
                                                image: AssetImage(
                                                    imageList[index]),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          if (containerColor != null)
                                            Positioned(
                                              left:
                                                  0, // Adjust the left position as needed
                                              top:
                                                  0, // Adjust the top position as needed
                                              child: CornerBanner(
                                                bannerPosition:
                                                    CornerBannerPosition
                                                        .topLeft,
                                                bannerColor: containerColor,
                                                elevation: 1,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "${showData?.tag!.name}",
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppColor.whiteColor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          //! Icons
                                          Positioned(
                                              bottom: 10,
                                              right: 20,
                                              child: Row(
                                                children: const [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    maxRadius: 15,
                                                    child: Image(
                                                      image: AssetImage(
                                                        ImageAssets.whatsapp,
                                                      ),
                                                      height: 25,
                                                      width: 55,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    maxRadius: 15,
                                                    child: Icon(
                                                      Icons.facebook,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  CircleAvatar(
                                                      backgroundColor:
                                                          AppColor.blackColor,
                                                      maxRadius: 15,
                                                      child: Icon(Icons.face))
                                                ],
                                              ))
                                        ],
                                      ),
                                      const SizedBox(height: 20),

                                      //!
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "\$ ${showData?.price}",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColor.greenColor),
                                              ),
                                              CustomeDividerWidget(
                                                thickness: 3,
                                                color: AppColor.greenColor,
                                                height: 4,
                                                endIndent: 10,
                                                indent: 10,
                                              ),
                                              Container(
                                                height: 2,
                                                width: 70,
                                                decoration: const BoxDecoration(
                                                  color: AppColor.greenColor,
                                                ),
                                              )
                                            ],
                                          ),
                                          elevatedButton(
                                            "${showData?.category}"
                                                .toUpperCase(),
                                            () => null,
                                            80.0,
                                            12,
                                            AppColor.whiteColor,
                                            AppColor.greyColor,
                                            25,
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: Text(
                                          "${showData?.zipcode} ${showData?.city}",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.greyColor),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Text(
                                          '${showData?.name} , ${showData?.nearestStation!.distance}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: AppColor.blackColor),
                                        ),
                                      ),

                                      //! Three
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              const Icon(Icons.bed_outlined),
                                              const SizedBox(width: 4),
                                              Text(
                                                  "${showData?.bedrooms ?? 0} bedrooms"),
                                              const SizedBox(width: 10),
                                              const Icon(Icons.chair),
                                              const SizedBox(width: 4),
                                              const SizedBox(width: 10),
                                              Text(
                                                  "${showData?.reception ?? 0} Reception"),
                                              const SizedBox(width: 10),
                                              const Icon(Icons.bed_outlined),
                                              const SizedBox(width: 4),
                                              Text(
                                                  "${showData?.bathrooms ?? 0} baths")
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      //!
                                      Center(
                                        child: elevatedButton(
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
                      );
                    }
                  default:
                    return const Text('Unknown ConnectionState');
                }
              },
            ),
          ),
          const SizedBox(height: 30),
          elevatedButton(
            "View all properties",
            () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const PropertiesPage())),
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
