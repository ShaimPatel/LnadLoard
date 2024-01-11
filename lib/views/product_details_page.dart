// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../Models/properties_data_model.dart';
import '../Provider/properties_provider.dart';
import '../Provider/slider_provider.dart';
import '../global/Widgets/divider_widget.dart';
import '../res/colors/app_color.dart';
import '../res/components/constrians.dart';
import 'HomePage/widgets/fetaured_data_widget.dart';
import 'dart:developer' as developer;

class ProductDetailsPage extends StatefulWidget {
  String productId;
  ProductDetailsPage({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  static final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
        actions: [
          Consumer<PropertiesProvider>(
            builder: (context, valueFeaturedData, child) =>
                FutureBuilder<FeaturedPropertiesModel>(
              future: valueFeaturedData.fetchFeaturedPropertiesData(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Text('No connection state yet');
                  case ConnectionState.waiting:
                    return const Padding(
                        padding: EdgeInsets.only(bottom: 8.0, right: 10),
                        child: Center());
                  case ConnectionState.active:
                    // Not commonly used, but here for demonstration
                    return const Text('Connection is active');
                  case ConnectionState.done:
                    if (snapshot.hasError || snapshot.data == null) {
                      return Text('Error: ${snapshot.error ?? "No Data"}');
                    } else if (!snapshot.hasData) {
                      return const Text('No Data');
                    } else {
                      var dataLength = snapshot.data!.data!.results!;
                      // developer.log("${dataLength.length}");
                      for (int i = 0; i < dataLength.length; i++) {
                        var showData = dataLength[i];
                        if (showData.id == widget.productId) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: AppColor.whiteColor,
                              child: InkWell(
                                onTap: () async {
                                  await Share.share(
                                    "Property Name : ${showData.name}\nProperty Id : ${showData.id}\nPropertu Type : ${showData.propertyType!.name}\nProperty Price : £${showData.price}\nProperty address :${showData.address},${showData.city},${showData.zipcode}\nProperty included : ${showData.bedrooms} Beds , ${showData.reception} Rexeption , ${showData.bathrooms} Baths\nNearest Station\nStation name : ${showData.nearestStation!.name}\nDistance : ${showData.nearestStation!.distance} ",
                                  );
                                },
                                child: const Icon(
                                  Icons.share,
                                ),
                              ),
                            ),
                          );
                        }
                      }
                      return const Spacer();
                    }
                  default:
                    return const Text('Unknown ConnectionState');
                }
              },
            ),
          ),
        ],
      ),
      body: Consumer<PropertiesProvider>(
        builder: (context, valueFeaturedData, child) =>
            FutureBuilder<FeaturedPropertiesModel>(
          future: valueFeaturedData.fetchFeaturedPropertiesData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Text('No connection state yet');
              case ConnectionState.waiting:
                return const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ));
              case ConnectionState.active:
                // Not commonly used, but here for demonstration
                return const Text('Connection is active');
              case ConnectionState.done:
                if (snapshot.hasError || snapshot.data == null) {
                  return Text('Error: ${snapshot.error ?? "No Data"}');
                } else if (!snapshot.hasData) {
                  return const Text('No Data');
                } else {
                  List<Widget> widgets = []; // Collect widgets here
                  var dataLength = snapshot.data!.data!.results!;
                  // developer.log("${dataLength.length}");
                  for (int i = 0; i < dataLength.length; i++) {
                    var showData = dataLength[i];
                    if (showData.id == widget.productId) {
                      // developer.log("$i");
                      widgets.add(Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer<SliderProvider>(
                              builder: (context, sliderUpdatedValue, child) =>
                                  Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        width: double.maxFinite,
                                        color: AppColor.whiteColor,
                                        child: CarouselSlider(
                                          items:
                                              showData.images!.all?.map((logo) {
                                            return Builder(
                                              builder: (BuildContext context) {
                                                return decodeBase64Image(logo);
                                              },
                                            );
                                          }).toList(),
                                          carouselController:
                                              carouselController,
                                          options: CarouselOptions(
                                            autoPlay: true,
                                            enlargeCenterPage: false,
                                            aspectRatio: 1 / 5,
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            disableCenter: false,
                                            autoPlayInterval:
                                                const Duration(seconds: 2),
                                            autoPlayAnimationDuration:
                                                const Duration(
                                                    milliseconds: 800),
                                            viewportFraction: 1,
                                            onPageChanged: (index, reason) {
                                              sliderUpdatedValue
                                                  .updateIndex(index);
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      //! Dot Button
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: showData.images!.all!
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return GestureDetector(
                                            onTap: () {
                                              developer.log("Ha bhai");

                                              print("Char raha hai");
                                              carouselController
                                                  .animateToPage(entry.key);
                                              sliderUpdatedValue
                                                  .updateIndex(entry.key);
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                width: sliderUpdatedValue
                                                            .currentIndex ==
                                                        entry.key
                                                    ? 8
                                                    : 7,
                                                height: 7,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: sliderUpdatedValue
                                                              .currentIndex ==
                                                          entry.key
                                                      ? Colors.red
                                                      : Colors.grey,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  )),

                          //!
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  showData.name!.isEmpty
                                      ? ""
                                      : showData.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.greenColor),
                                ),
                                const SizedBox(height: 10),
                                CustomeDividerWidget(
                                  height: 2,
                                  color: AppColor.greyColor,
                                  thickness: 1,
                                  indent: 0,
                                  endIndent: 10,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "£${showData.price == null ? "" : showData.price.toString()}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blackColor),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Property Type : ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            showData.propertyType!.name!.isEmpty
                                                ? ""
                                                : showData.propertyType!.name
                                                    .toString(),
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),

                                Text(
                                  "${showData.address}, ${showData.city}, ${showData.zipcode}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          AppColor.blackColor.withOpacity(0.4)),
                                ),

                                //!

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 5),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.bed_outlined,
                                          size: 35,
                                          color: AppColor.blueColor
                                              .withOpacity(0.7),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          "${showData.bedrooms ?? "No"}  Beds",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(width: 10),
                                        Icon(
                                          Icons.chair,
                                          size: 35,
                                          color: AppColor.blueColor
                                              .withOpacity(0.7),
                                        ),
                                        const SizedBox(width: 4),
                                        const SizedBox(width: 10),
                                        Text(
                                          "${showData.reception ?? "No"} Reception",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(width: 10),
                                        Icon(
                                          Icons.bed_outlined,
                                          size: 35,
                                          color: AppColor.blueColor
                                              .withOpacity(0.7),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          " ${showData.bathrooms ?? "No"} Baths",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),

                                const Text(
                                  "Nearest Station",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blackColor),
                                ),
                                const SizedBox(height: 7),

                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Station name : ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            showData.nearestStation!.name ?? "",
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Distance : ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            showData.nearestStation!.distance ??
                                                "",
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),

                          //!Sumry
                          const Center(
                            child: Text(
                              "Summary",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.greenColor),
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomeDividerWidget(
                            height: 2,
                            color: AppColor.greyColor,
                            thickness: 2,
                            indent: 10,
                            endIndent: 10,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Html(
                              data: showData.description,
                            ),
                          ),
                          const SizedBox(height: 10),
                          //!featured...
                          const FeaturedDataWidget(),
                        ],
                      ));
                    }
                  }

                  if (widgets.isEmpty) {
                    return const Center(child: Text("Data not found!"));
                  } else {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            // height: MediaQuery.of(context).size.height * 2.1,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: widgets.length,
                              itemBuilder: (ctx, index) {
                                return widgets[index];
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }
              default:
                return const Text('Unknown ConnectionState');
            }
          },
        ),
      ),
    );
  }
}
