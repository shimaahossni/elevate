// core/functions/dialogs.dart
import 'package:flutter/material.dart';
import 'package:task1/core/utils/colors.dart';
import 'package:task1/core/utils/text_style.dart';

showErrorDialog(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: AppColors.redColor,
    content: Text(text),
  ));
}

showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Loading ....",
                style: getTitleStyle(
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ));
}
