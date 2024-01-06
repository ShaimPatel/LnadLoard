
import 'package:flutter/material.dart';
import 'package:landloard/views/Properties%20Page/widget/properties_data_widget.dart';
import 'package:provider/provider.dart';

import '../../../Models/properties_data_model.dart';
import '../../../Provider/properties_provider.dart';

class InternationalShowDataWidget extends StatefulWidget {
  const InternationalShowDataWidget({Key? key}) : super(key: key);

  @override
  State<InternationalShowDataWidget> createState() => _InternationalShowDataWidgetState();
}

class _InternationalShowDataWidgetState extends State<InternationalShowDataWidget> {

  @override
  void initState() {
    Provider.of<PropertiesProvider>(context , listen: false).fetchFeaturedPropertiesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var checkCategory = Provider.of<PropertiesProvider>(context , listen: true).fetchFeaturedPropertiesData();

    return Consumer<PropertiesProvider>(
      builder: (context, valueFeaturedData, child) =>
          FutureBuilder<FeaturedPropertiesModel>(
            future: valueFeaturedData.fetchFeaturedPropertiesData(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Text('No connection state yet');
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
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
                    for (int i = 0; i < dataLength.length; i++) {
                      var showData = dataLength[i];
                      if (showData.category == "international") {
                        Color? containerColor = valueFeaturedData.getColorFromHex(
                          showData.tag!.color ?? "#FFFFFF",
                        );
                        widgets.add(
                          PropertiesDataWidget(
                            tagColor: containerColor,
                            tagName: showData!.tag!.name.toString(),
                            bathrooms:showData!.bathrooms == null? "No".toString() :showData!.bathrooms.toString(),
                            bedrooms: showData!.bedrooms == null ? "No".toString(): showData!.bedrooms.toString(),
                            category: showData!.category.toString(),
                            city: showData!.city.toString(),
                            name: showData!.name.toString(),
                            prices: showData!.price.toString(),
                            reception: showData!.reception == null? "No".toString():showData!.reception.toString(),
                            zipCode: showData!.zipcode.toString(),
                          ),
                        );
                      }
                    }

                    if (widgets.isEmpty) {
                      return const Center(child: Text("Data not found!"));
                    } else {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: widgets.length,
                            itemBuilder: (ctx, index) {
                              return widgets[index];
                            },
                          ),
                        ),
                      );
                    }

                  }
                default:
                  return const Text('Unknown ConnectionState');
              }
            },
          ),
    );
  }
}
