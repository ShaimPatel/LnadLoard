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
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                child: Icon(
                  Icons.share,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                // height: MediaQuery.of(context).size.height * 2.1,
                width: double.maxFinite,
                decoration: const BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer<SliderProvider>(
                          builder: (context, sliderUpdatedValue, child) =>
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
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
                                    autoPlay: true,
                                    enlargeCenterPage: false,
                                    aspectRatio: 1 / 5,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    disableCenter: false,
                                    autoPlayInterval:
                                        const Duration(seconds: 2),
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
                        children:
                            imgetOfProductDetails.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                width: currentIndex == entry.key ? 8 : 7,
                                height: 7,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
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
                                  color: AppColor.blackColor),
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Property Type : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'Detached',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),

                            Text(
                              "1 Haven Road, Rainham, RM13 9GQ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.blackColor.withOpacity(0.4)),
                            ),

                            //!

                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bed_outlined,
                                      size: 35,
                                      color:
                                          AppColor.blueColor.withOpacity(0.7),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "Beds",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      Icons.chair,
                                      size: 35,
                                      color:
                                          AppColor.blueColor.withOpacity(0.7),
                                    ),
                                    const SizedBox(width: 4),
                                    const SizedBox(width: 10),
                                    const Text(
                                      " Reception",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      Icons.bed_outlined,
                                      size: 35,
                                      color:
                                          AppColor.blueColor.withOpacity(0.7),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      " Baths",
                                      style: TextStyle(
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
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Station name : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'New Road Rainham',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Distance : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: " 0.2 Miles",
                                    style: TextStyle(
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
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "We are delighted to offer for sale this beautiful and spacious ground floor two bedroom maisonette finished to a very high specification. The property was completed in 2019 and is very spacious with plenty of storage space.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //!featured...
                      const FeaturedDataWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
