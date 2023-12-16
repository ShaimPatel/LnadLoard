import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/HomePage/widgets/customer_says.dart';
import 'package:landloard/views/HomePage/widgets/featured_properties_widget.dart';
import 'package:landloard/views/HomePage/widgets/our_services.dart';
import 'package:landloard/views/HomePage/widgets/sales_widget.dart';
import '../../global/Widgets/divider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List sliderImage = [
    ImageAssets.img2,
    ImageAssets.img1,
    ImageAssets.img3,
    ImageAssets.img4,
  ];

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

//! On Exit ..
  Future<bool> showExitPopup() async {
    return await showDialog(
          barrierDismissible: false,
          context: context,
          useSafeArea: true,
          barrierColor: Colors.black.withOpacity(0.5),
          builder: (context) => AlertDialog(
            elevation: 0,
            title: const Text(
              'Close App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            content: const Text(
              'Do you want to exit an App ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            actions: [
              Column(
                children: [
                  const Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              side: BorderSide(color: Colors.redAccent)),
                        ),
                        onPressed: () => Navigator.of(context).pop(false),
                        icon: const Icon(
                          Icons.close,
                          size: 22,
                          color: Colors.redAccent,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "No".toUpperCase(),
                            style: const TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              side: BorderSide(color: AppColor.greenColor)),
                        ),
                        onPressed: () => Navigator.of(context).pop(true),
                        icon: const Icon(
                          Icons.done,
                          size: 22,
                          color: AppColor.greenColor,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Yes".toUpperCase(),
                            style: const TextStyle(
                              color: AppColor.greenColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
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
            scrollDirection: Axis.vertical,
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                //! 1 Section for SALES AND RENT
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
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
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: false,
                          aspectRatio: 1 / 5,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          disableCenter: false,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.1,
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04,
                      child: const Center(
                        child: Text(
                          "Search your dream home",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColor.whiteColor),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.06,
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: DefaultTabController(
                          length: 2, // Number of tab sets
                          child: Column(
                            children: [
                              TabBar(
                                unselectedLabelColor: AppColor.greyColor,
                                unselectedLabelStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                                labelColor: AppColor.greenColor,
                                labelStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                                tabs: [
                                  Tab(text: 'Sale'.toUpperCase()),
                                  Tab(
                                    text: 'Rent'.toUpperCase(),
                                  ),
                                ],
                              ),
                              const Expanded(
                                child: TabBarView(
                                  children: [
                                    // Content for Tab A1
                                    SalesWidget(),
                                    // Content for Tab A2
                                    SalesWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //!2 Section for Featured Properties
                const FeaturedPropertiesWidget(),
                //! 3 Service section
                Container(
                  height: MediaQuery.of(context).size.height * 1.2,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: OurServiceWidget(
                                icon: Icons.home,
                                onPres: () {},
                                title: "Our Properties",
                                subtitle: "We have best property Only for you",
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: OurServiceWidget(
                                icon: Icons.person_2_rounded,
                                onPres: () {},
                                title: "Property for Sale",
                                subtitle:
                                    "Best possible price in the shortest possible time.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: OurServiceWidget(
                                icon: Icons.home,
                                onPres: () {},
                                title: "Property Maintenance",
                                subtitle:
                                    "Expert maintenance and compliance to protect your asset.",
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: OurServiceWidget(
                                icon: Icons.person_2_rounded,
                                onPres: () {},
                                title: "Property for Rent",
                                subtitle:
                                    "Would you like to search in the following?",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //! 4 Customre Says section
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(color: AppColor.whiteColor),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        "Customer Says",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomeDividerWidget(
                        height: 1,
                        color: AppColor.greyColor,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      const SizedBox(height: 40),
                      //!
                      SizedBox(
                        height: 300,
                        width: double.maxFinite,
                        child: CarouselSlider(
                            options: CarouselOptions(
                                aspectRatio:
                                    MediaQuery.of(context).size.aspectRatio,
                                enlargeCenterPage: false,
                                reverse: false,
                                // enableInfiniteScroll: true,
                                initialPage: 1,
                                scrollPhysics: const BouncingScrollPhysics(),
                                pauseAutoPlayOnTouch: true,
                                autoPlay: true,
                                viewportFraction: 1),
                            items: const [
                              CustomerSaysWidget(),
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
