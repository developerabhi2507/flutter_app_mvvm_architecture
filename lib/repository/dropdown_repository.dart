import 'dart:convert';

import 'package:flutter_app_mvvm_architecture/models/dropdown_model.dart';

import '../../data/network/network_api_services.dart';
import '../../res/app_url/app_url.dart';

class DropdownRepository {
  final _apiService = NetworkApiServices();

  Future<List<DropdownModel>> dropdownListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    final body = json.decode(response.data);
    return body.map((e) {
      final map = e as Map<String, dynamic>;
      return DropdownModel(
          userId: map['userId'],
          id: map['id'],
          title: map['title'],
          body: map['body']);
    }).toList;
  }
}
