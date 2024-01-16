import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

import '../../../global/Widgets/divider_widget.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/constrians.dart';
import '../../product_details_page.dart';

class PropertiesDataWidget extends StatefulWidget {
  final Color tagColor;
  final String tagName;
  final String prices;
  final String category;
  final String bedrooms;
  final String bathrooms;
  final String reception;
  final String city;
  final String zipCode;
  final String name;
  final Widget houseImage;
  final String productId;
  const PropertiesDataWidget({
    super.key,
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
  });

  @override
  State<PropertiesDataWidget> createState() => _PropertiesDataWidgetState();
}

class _PropertiesDataWidgetState extends State<PropertiesDataWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
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
                        child: widget.houseImage,
                      ),
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
                          children: const [
                            CircleAvatar(
                              maxRadius: 15,
                              child: Icon(
                                Icons.facebook,
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                                backgroundColor: AppColor.blueColor,
                                maxRadius: 15,
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                )),
                            SizedBox(width: 5),
                            CircleAvatar(
                                backgroundColor: AppColor.blackColor,
                                maxRadius: 15,
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                ))
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: 20),

                //!
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "£ ${widget.prices}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.greenColor),
                          ),
                          const CustomeDividerWidget(
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
                        fontSize: 18,
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
                            builder: (_) => ProductDetailsPage(
                                  productId: widget.productId,
                                ))),
                    180.0,
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
      ),
    );
  }
}
