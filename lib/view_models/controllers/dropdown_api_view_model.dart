import 'package:flutter/foundation.dart';
import 'package:flutter_app_mvvm_architecture/data/response/status.dart';
import 'package:flutter_app_mvvm_architecture/models/dropdown_model.dart';
import 'package:flutter_app_mvvm_architecture/repository/dropdown_repository.dart';
import 'package:get/get.dart';

class DropDownApiViewModel extends GetxController {
  final _api = DropdownRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final dropdownList = DropdownModel().obs as List;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(DropdownModel _value) => dropdownList.map((e) {
    final map = e as Map<String, dynamic>;
    
  }) = _value;
  void setError(String _value) => error.value = _value;

  void userListApi() {
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
