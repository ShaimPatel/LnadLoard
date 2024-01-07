import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/slider_provider.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';
import 'dart:developer' as developer;

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List sliderImage = [
    ImageAssets.img2,
    ImageAssets.img1,
    ImageAssets.img3,
    ImageAssets.img4,
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderProvider>(builder: (context,sliderUpdatedValue,child)=>
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.maxFinite,
          color: AppColor.whiteColor,
          child: CarouselSlider(
            items: sliderImage.map((logo) {
              developer.log("${i++ } Build Slider Images ");
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
              onPageChanged: (index, reason) {
                sliderUpdatedValue.updateIndex(index);
              },
            ),
          ),
        )
    );
  }
}
