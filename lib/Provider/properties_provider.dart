import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:landloard/Models/properties_data_model.dart';

class PropertiesProvider extends ChangeNotifier {
  Future<FeaturedPropertiesModel> fetchFeaturedPropertiesData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://api.smartlinkestates.com/api/list-properties/?category_type=&page=1&_=1702708460740"));

      if (response.statusCode == 200) {
        var convertedData = jsonDecode(response.body.toString());

        if (convertedData['success'] == true &&
            convertedData['message'] == "Data retrieved successfully") {
          return FeaturedPropertiesModel.fromJson(convertedData);
        } else {
          throw Exception('Data retrieval failed');
        }
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception during data fetch: $e');
      throw Exception('Failed to load data: $e');
    }
  }
}
