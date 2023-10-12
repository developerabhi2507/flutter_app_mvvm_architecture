import 'package:flutter_app_mvvm_architecture/models/dropdown_model.dart';

import '../../data/network/network_api_services.dart';
import '../../res/app_url/app_url.dart';

class DropdownRepository {
  final _apiService = NetworkApiServices();

  Future<DropdownModel> dropdownListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return DropdownModel.fromJson(response);
  }
}
