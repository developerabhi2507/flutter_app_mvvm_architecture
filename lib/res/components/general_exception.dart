import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            color: AppColor.blackColor,
          ),
          Text('data')
        ],
      ),
    );
  }
}
