import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.textColor = AppColor.buttonFg4Dark,
      required this.title,
      required this.onPress,
      this.loading = false});

  final bool loading;
  final String title;
  final VoidCallback onPress;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Center(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: textColor),
            ),
          );
  }
}
