// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/constrians.dart';

import '../../product_details_page.dart';

class FeaturedPropertiesWidget extends StatefulWidget {
  Color tagColor;
  String tagName;
  String prices;
  String category;
  String bedrooms;
  String bathrooms;
  String reception;
  String city;
  String zipCode;
  String name;
  Widget houseImage;
  String productId;
  FeaturedPropertiesWidget({
    Key? key,
    required this.tagColor,
    required this.tagName,
    required this.prices,
    required this.category,
    required this.bedrooms,
    required this.bathrooms,
    required this.reception,
    required this.city,
    required this.zipCode,
    required this.name,
    required this.houseImage,
    required this.productId,
  }) : super(key: key);

  @override
  State<FeaturedPropertiesWidget> createState() =>
      _FeaturedPropertiesWidgetState();
}

class _FeaturedPropertiesWidgetState extends State<FeaturedPropertiesWidget> {
  //! Funcation for Url Launch..!

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColor.greyColor,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: widget.houseImage),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CornerBanner(
                    bannerPosition: CornerBannerPosition.topLeft,
                    bannerColor: widget.tagColor,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        widget.tagName,
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColor.whiteColor,
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
                      children: [
                        InkWell(
                          onTap: () async {
                            await _launchInBrowser(
                                Uri.parse("https://www.whatsapp.com/"));
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            maxRadius: 15,
                            child: Image(
                              image: AssetImage(
                                ImageAssets.whatsapp,
                              ),
                              height: 25,
                              width: 55,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        InkWell(
                          onTap: () async {
                            await _launchInBrowser(
                                Uri.parse("https://www.facebook.com/"));
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            maxRadius: 15,
                            child: Icon(
                              Icons.facebook,
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        InkWell(
                          onTap: () async {
                            await _launchInBrowser(
                                Uri.parse("https://twitter.com/home"));
                          },
                          child: const CircleAvatar(
                              backgroundColor: AppColor.whiteColor,
                              maxRadius: 15,
                              child: Image(
                                image: AssetImage(ImageAssets.xp),
                                height: 20,
                                width: 20,
                              )),
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
                    Text(
                      "£ ${widget.prices}",
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
                  widget.category.toUpperCase(),
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
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "${widget.zipCode} ${widget.city}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greyColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                widget.name,
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
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Icon(Icons.bed_outlined),
                    const SizedBox(width: 4),
                    Text("${widget.bedrooms} bedrooms"),
                    const SizedBox(width: 10),
                    const Icon(Icons.chair),
                    const SizedBox(width: 4),
                    const SizedBox(width: 10),
                    Text("${widget.reception}  Reception"),
                    const SizedBox(width: 10),
                    const Icon(Icons.bed_outlined),
                    const SizedBox(width: 4),
                    Text("${widget.bathrooms}  baths")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            //!
            Center(
              child: elevatedButton(
                "See details",
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ProductDetailsPage(
                            // productId: widget.productId,
                            ))),
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
  }
}
