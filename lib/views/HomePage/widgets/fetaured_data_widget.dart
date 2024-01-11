import 'package:flutter/material.dart';
import 'package:landloard/views/HomePage/widgets/featured_properties_widget.dart';
import 'package:provider/provider.dart';

import '../../../Models/properties_data_model.dart';
import '../../../Provider/properties_provider.dart';
import '../../../global/Widgets/divider_widget.dart';
import '../../../global/Widgets/shimmer_widget.dart';
import '../../../res/colors/app_color.dart';
import '../../../res/components/constrians.dart';
import '../../Properties Page/properties_page.dart';

class FeaturedDataWidget extends StatefulWidget {
  const FeaturedDataWidget({super.key});

  @override
  State<FeaturedDataWidget> createState() => _FeaturedDataWidgetState();
}

class _FeaturedDataWidgetState extends State<FeaturedDataWidget> {
  @override
  void initState() {
    Provider.of<PropertiesProvider>(context, listen: false)
        .fetchFeaturedPropertiesData();
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
          Consumer<PropertiesProvider>(
            builder: (context, valueFeaturedData, child) =>
                FutureBuilder<FeaturedPropertiesModel>(
              future: valueFeaturedData.fetchFeaturedPropertiesData(),
              builder: (context, snapshot) {
                print(snapshot.connectionState);
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Text('No connection state yet');
                  case ConnectionState.waiting:
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ShimmerWidget(
                          widthSized: MediaQuery.of(context).size.width * 0.6,
                          scrollDirection: Axis.horizontal),
                    );
                  case ConnectionState.active:
                    return const Text('Connection is active');
                  case ConnectionState.done:
                    if (snapshot.hasError || snapshot.data == null) {
                      return Text('Error: ${snapshot.error ?? "No Data"}');
                    } else if (!snapshot.hasData) {
                      return const Text('No Data');
                    } else {
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
                              Color? containerColor =
                                  valueFeaturedData.getColorFromHex(snapshot
                                          .data
                                          ?.data!
                                          .results![index]
                                          .tag!
                                          .color ??
                                      "#FFFFFF");
                              return FeaturedPropertiesWidget(
                                tagColor: containerColor,
                                tagName: showData!.tag!.name.toString(),
                                bathrooms: showData.bathrooms == null
                                    ? "No".toString()
                                    : showData.bathrooms.toString(),
                                bedrooms: showData.bedrooms == null
                                    ? "No".toString()
                                    : showData.bedrooms.toString(),
                                category: showData.category.toString(),
                                city: showData.city.toString(),
                                name: showData.name.toString(),
                                prices: showData.price.toString(),
                                reception: showData.reception == null
                                    ? "No".toString()
                                    : showData.reception.toString(),
                                zipCode: showData.zipcode.toString(),
                                houseImage: decodeBase64Image(
                                    showData.images!.all![index]),
                                productId: showData.id.toString(),
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
