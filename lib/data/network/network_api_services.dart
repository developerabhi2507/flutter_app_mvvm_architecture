import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_mvvm_architecture/res/app_url/app_url.dart';

import '../app_exceptions.dart';
import 'base_api_serivces.dart';

class NetworkApiServices extends BaseApiServices {
  final dio = Dio();
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response = await dio.get(url).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    } on DioException {
      throw DioException(
          requestOptions: RequestOptions(
        baseUrl: AppUrl.baseUrl,
      ));
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await dio
          .get(url, data: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.data);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.data);
        return responseJson;
      default:
        throw FetchDataException(
            'Error occured while communicating with server ${response.statusCode}');
    }
  }
}
