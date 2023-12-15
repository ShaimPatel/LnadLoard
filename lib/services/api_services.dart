import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:landloard/services/app_exception.dart';

class ApiService {
  static const String _baseUrl = "https://api.smartlinkestates.com/api";
  //! GetUrl Method..
  static Uri getUrl(String methodName) {
    return Uri.parse(_baseUrl + methodName);
  }

  //! Get Method
  static Future<dynamic> get(String url,
      {Map<String, String>? headerMap}) async {
    dynamic responseJson;
    if (kDebugMode) {
      print(getUrl(url));
    }
    try {
      http.Response response;
      if (headerMap == null) {
        response = await http.get(getUrl(url));
      } else {
        response = await http.get(getUrl(url), headers: headerMap);
      }
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  //!  POST Method With The body ..!
  static Future<dynamic> post(String url,
      {required Map<String, dynamic>? params,
      Map<String, String>? headerMap}) async {
    dynamic responseJson;
    //! Debugging
    if (kDebugMode) {
      print(getUrl(url));
      print(params);
    }
    try {
      if (params == null) {
        throw FetchDataException('Parameters cannot be null');
      }
      var response =
          await http.post(getUrl(url), body: params, headers: headerMap);

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  // MULTIPART
  static Future<dynamic> multipart(
    String url, {
    required Map<String, dynamic> files,
    required Map<String, String> headerMap,
    Map<String, String>? params,
  }) async {
    dynamic responseJson;
    if (kDebugMode) {
      print(getUrl(url));
      print(files);
    }
    try {
      var request = http.MultipartRequest('POST', getUrl(url));
      files.forEach((key, value) async {
        request.files.add(await http.MultipartFile.fromPath(key, value,
            contentType: MediaType("image", value.split(".").last)));
      });

      request.headers.addAll(headerMap);

      if (params != null) {
        request.fields.addAll(params);
      }

      http.StreamedResponse res = await request.send();
      final response = await http.Response.fromStream(res);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('no_internet_conn');
    }
    return responseJson;
  }

  // ! PATCH
  static Future<dynamic> patch(String url,
      {required Map<String, dynamic>? params,
      Map<String, String>? headerMap}) async {
    dynamic responseJson;
    if (kDebugMode) {
      print(getUrl(url));
      print(params);
      print(headerMap);
    }
    try {
      if (params == null) {
        throw FetchDataException('Parameters cannot be null');
      }
      var response =
          await http.patch(getUrl(url), body: params, headers: headerMap);

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  //! Return Response ..
  static dynamic returnResponse(http.Response response) {
    dynamic responseJson = jsonDecode(response.body);
    //! For Debugging mode..
    if (kDebugMode) {
      print("response");
      print(response.statusCode);
      print(responseJson);
      print(response.body.toString());
    }
    int statusCode;
    if (responseJson['code'] != null) {
      statusCode = responseJson['code'] as int;
    } else {
      statusCode = response.statusCode;
    }
    switch (statusCode) {
      case 200:
        return responseJson;
      case 401:
        throw BadRequestException(responseJson['message']);
      case 400:
        throw BadRequestException(responseJson['message']);
      case 403:
        throw UnauthorisedException(responseJson['message']);
      case 500:
        throw UnauthorisedException(responseJson['message']);
      case 404:
        throw BadRequestException(responseJson['message']);

      default:
        throw FetchDataException('Error occured while communication with server'
            ' with status code : ${response.statusCode}');
    }
  }
}
