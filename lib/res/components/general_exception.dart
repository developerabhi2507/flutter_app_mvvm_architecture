import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/res/components/round_button.dart';

import '../colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key, required this.onPress});
  final VoidCallback onPress;

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColor.blackColor,
          ),
          const Text('data'),
          RoundButton(title: 'Retry', onPress: () => widget.onPress)
        ],
      ),
    );
  }
}
