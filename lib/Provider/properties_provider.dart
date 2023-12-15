import 'package:flutter/material.dart';
import 'package:landloard/Models/properties_data_model.dart';
import 'package:landloard/services/api_services.dart';
import 'package:landloard/services/end_point_api.dart';

class PropertiesProvider with ChangeNotifier {
  // final List<PropertiesDataModel> _propertiesData = [];
  // final bool _success = false;
  // final String _message = '';

  // List<PropertiesDataModel> get propertiesData => _propertiesData;
  // bool get success => _success;
  // String get message => _message;

  Future<PropertiesDataModel> fetchPropertiesData() async {
    final response = await ApiService.get(EndPoints.featuredPropertiesEndPoint);
    return PropertiesDataModel.fromJson(response);
  }
}
