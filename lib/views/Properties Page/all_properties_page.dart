import 'package:flutter/material.dart';
import 'package:landloard/Provider/properties_provider.dart';
import 'package:landloard/views/Properties%20Page/widget/properties_data_widget.dart';
import 'package:provider/provider.dart';

import '../../Models/properties_data_model.dart';
import '../../global/Widgets/shimmer_widget.dart';
import '../../res/components/constrians.dart';

class AllPropertiesPage extends StatefulWidget {
  const AllPropertiesPage({Key? key}) : super(key: key);

  @override
  State<AllPropertiesPage> createState() => _AllPropertiesPageState();
}

class _AllPropertiesPageState extends State<AllPropertiesPage> {
  @override
  void initState() {
    Provider.of<PropertiesProvider>(context, listen: false)
        .fetchFeaturedPropertiesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width,
      child: Consumer<PropertiesProvider>(
        builder: (context, valueFeaturedData, child) =>
            FutureBuilder<FeaturedPropertiesModel>(
          future: valueFeaturedData.fetchFeaturedPropertiesData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Text('No connection state yet');
              case ConnectionState.waiting:
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ShimmerWidget(
                      widthSized: MediaQuery.of(context).size.width * 0.6,
                      scrollDirection: Axis.vertical),
                );
              case ConnectionState.active:
                // Not commonly used, but here for demonstration
                return const Text('Connection is active');
              case ConnectionState.done:
                if (snapshot.hasError || snapshot.data == null) {
                  return Text('Error: ${snapshot.error ?? "No Data"}');
                } else if (!snapshot.hasData) {
                  return const Text('No Data');
                } else {
                  // Use the data from the snapshot to build your UI
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data?.data!.results!.length,
                        itemBuilder: (ctx, index) {
                          var showData = snapshot.data?.data!.results![index];
                          Color? containerColor =
                              valueFeaturedData.getColorFromHex(snapshot
                                      .data?.data!.results![index].tag!.color ??
                                  "#FFFFFF");
                          return PropertiesDataWidget(
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
                            houseImage:
                                decodeBase64Image(showData.images!.all![index]),
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
    );
  }
}
