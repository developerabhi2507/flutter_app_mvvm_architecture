import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

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
      throw DioException(requestOptions: RequestOptions());
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
          .post(url, data: json.encode(data))
          .timeout(const Duration(seconds: 10));
      if (kDebugMode) {
        print('statusCode: ${response.statusCode}');
        print(response.statusMessage);
      }

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    } on DioException catch (e) {
      if (e.response != null) {
        if (kDebugMode) {
          print('dataError: ${e.response!.data}');
          print('headerError: ${e.response!.headers}');
          print('requestOptions: ${e.response!.requestOptions}');
        }
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        if (kDebugMode) {
          print('errorRequestOptions: ${e.requestOptions}');
          print('errorMessage: ${e.message}');
        }
      }
    }
    if (kDebugMode) {
      print('responseData: $responseJson');
    }
    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        return responseJson;
      case 400:
        dynamic responseJson = response.data;
        return responseJson;
      default:
        throw DioException(
            requestOptions: RequestOptions(),
            message:
                'Error occured while communicating with server ${response.statusCode}');
    }
  }
}
