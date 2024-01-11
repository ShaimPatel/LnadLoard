// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/slider_provider.dart';
import '../global/Widgets/divider_widget.dart';
import '../res/assets/image_assets.dart';
import '../res/colors/app_color.dart';
import 'HomePage/widgets/fetaured_data_widget.dart';

class ProductDetailsPage extends StatefulWidget {
  // String productId;
  const ProductDetailsPage({
    Key? key,
    // required this.productId,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final List sliderImage = [
    ImageAssets.img2,
    ImageAssets.img1,
    ImageAssets.img3,
    ImageAssets.img4,
  ];
  static int currentIndex = 0;
  static final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final List imgetOfProductDetails = [1, 2, 3, 4, 5];
    // print(widget.productId);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details Page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 2.2,
            width: double.maxFinite,
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<SliderProvider>(
                    builder: (context, sliderUpdatedValue, child) => Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: double.maxFinite,
                          color: AppColor.whiteColor,
                          child: CarouselSlider(
                            items: sliderImage.map((logo) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Image.asset(
                                    logo,
                                    fit: BoxFit.cover,
                                  );
                                },
                              );
                            }).toList(),
                            carouselController: carouselController,
                            options: CarouselOptions(
                              autoPlay: false,
                              enlargeCenterPage: false,
                              aspectRatio: 1 / 5,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              disableCenter: false,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                sliderUpdatedValue.updateIndex(index);
                              },
                            ),
                          ),
                        )),
                const SizedBox(height: 10),
                //! Dot Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgetOfProductDetails.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          width: currentIndex == entry.key ? 8 : 7,
                          height: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                //!
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Haven Road, Rainham",
                        style: TextStyle(
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
                      const Text(
                        "£320,000",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                      const Text(
                        "Property Type : Detached",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                      const Text(
                        "1 Haven Road, Rainham, RM13 9GQ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),

                      //!
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              Icon(Icons.bed_outlined),
                              SizedBox(width: 4),
                              Text(" bedrooms"),
                              SizedBox(width: 10),
                              Icon(Icons.chair),
                              SizedBox(width: 4),
                              SizedBox(width: 10),
                              Text(" Reception"),
                              SizedBox(width: 10),
                              Icon(Icons.bed_outlined),
                              SizedBox(width: 4),
                              Text(" baths")
                            ],
                          ),
                        ),
                      ),
                      //!
                      const Text(
                        "Nearest Station",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                      const Text(
                        "Station name : New Road Rainham",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                      const Text(
                        "Distance : 0.2 Miles",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                    ],
                  ),
                ),

                //!Sumry
                const Center(
                  child: Text(
                    "Summary",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.greenColor),
                  ),
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

                const Text(
                  "We are delighted to offer for sale this beautiful and spacious ground floor two bedroom maisonette finished to a very high specification. The property was completed in 2019 and is very spacious with plenty of storage space.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor),
                ),
                const SizedBox(height: 10),

                const Text(
                  "Benefits include a long lease, allocated parking space, Private front patio / garden space. Good links to the station and A13 and M25.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor),
                ),
                const SizedBox(height: 10),

                const Text(
                  "Ideal for first time buyers or a young family.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor),
                ),
                //!featured...
                const FeaturedDataWidget(),
              ],
            ),
          ),
        ));
  }
}
