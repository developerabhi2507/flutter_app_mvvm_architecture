import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/assets/assets.dart';
import '../view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isFetchDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height - (Get.height - 100),
            ),
            Image.asset(
              AssetConstants.logoGif,
              width: Get.width - (Get.width - 250),
              height: Get.height - (Get.height - 250),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetConstants.appIcon,
                  width: Get.width - (Get.width - 70),
                  height: Get.height - (Get.height - 70),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('app_name'.tr,
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
