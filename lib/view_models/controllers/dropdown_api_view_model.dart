import 'package:flutter/foundation.dart';
import 'package:flutter_app_mvvm_architecture/data/response/status.dart';
import 'package:flutter_app_mvvm_architecture/models/dropdown_model.dart';
import 'package:flutter_app_mvvm_architecture/repository/dropdown_repository.dart';
import 'package:get/get.dart';

class DropDownApiViewModel extends GetxController {
  final _api = DropdownRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final dropdownList = <DropdownModel>[].obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setUserList(List<DropdownModel> value) => dropdownList.value = value;
  void setError(String value) => error.value = value;

  Future<List<DropdownModel>> userListApi() async {
    try {
      final value = await _api.dropdownListApi();
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
      return value;
    } catch (error, stackTrace) {
      if (kDebugMode) {
        print(error);
        print(stackTrace);
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
      throw error; // Rethrow the error to propagate it up the call chain.
    }
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);
    _api.dropdownListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error);
        print(stackTrace);
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}
