import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/models/dropdown_model.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/dropdown_api_view_model.dart';
import 'package:get/get.dart';

class DropDownApi extends StatefulWidget {
  const DropDownApi({super.key});

  @override
  State<DropDownApi> createState() => _DropDownApiState();
}

class _DropDownApiState extends State<DropDownApi> {
  final dropdownViewModel = Get.put(DropDownApiViewModel());
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Api'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<DropdownModel>>(
              future: dropdownViewModel.userListApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return DropdownButton(
                    hint: const Text('Select Items'),
                    isExpanded: true,
                    value: selectedValue,
                    icon: Icon(Icons.arrow_drop_down),
                    items: snapshot.data!.map((e) {
                      return DropdownMenuItem(child: Text(e.id.toString()));
                    }).toList(),
                    onChanged: (value) {
                      selectedValue = value;
                      setState(() {});
                    },
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
