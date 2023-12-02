import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/HomePage/widgets/featured_properties_widget.dart';
import 'package:landloard/views/HomePage/widgets/sales_widget.dart';

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
                    color: Colors.red,
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
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // Content for Tab A1
                                  const SalesWidget(),
                                  // Content for Tab A2
                                  Container(
                                    color: Colors.grey[300],
                                    child: const Center(
                                      child: Text('Connect for rent'),
                                    ),
                                  ),
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
            ],
          ),
        ));
  }
}
