import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/data/response/status.dart';
import 'package:flutter_app_mvvm_architecture/res/components/general_exception.dart';
import 'package:flutter_app_mvvm_architecture/res/components/internet_exceptions_widget.dart';
import 'package:flutter_app_mvvm_architecture/res/routes/routes_name.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/home/home_view_model.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/user_prefrences/user_prefrence_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeViewmodel = Get.put(HomeViewModel());
  UserPrefences userPrefences = UserPrefences();

  @override
  void initState() {
    super.initState();
    homeViewmodel.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                userPrefences.removeUser().then((value) {
                  Get.toNamed(RouteName.loginView);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Obx(() {
        switch (homeViewmodel.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            if (homeViewmodel.error.value == 'No internet') {
              return InternetExceptionWidget(onPress: () {
                homeViewmodel.refreshApi();
              });
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeViewmodel.refreshApi();
              });
            }

          case Status.COMPLETED:
            // return const Center(
            //   child: Text('request is successfull.'),
            // );
            return ListView.builder(
              itemCount: homeViewmodel.userList.value.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(homeViewmodel
                          .userList.value.data![index].avatar
                          .toString()),
                    ),
                    title: Text(homeViewmodel
                        .userList.value.data![index].firstName
                        .toString()),
                    subtitle: Text(homeViewmodel
                        .userList.value.data![index].email
                        .toString()),
                  ),
                );
              },
            );
        }
      }),
    );
  }
}
