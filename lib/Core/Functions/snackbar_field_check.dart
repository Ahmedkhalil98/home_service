import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

void showSnackBar() {
  Get.showSnackbar(const GetSnackBar(
    title: 'Hint',
    message: 'Out of Range',
    animationDuration: Duration(milliseconds: 500),
    backgroundColor: primaryColor,
    borderColor: itemsColor,
    icon: Icon(
      Icons.error,
      color: itemsColor,
      size: 35,
    ),
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    snackStyle: SnackStyle.FLOATING,
    duration: Duration(milliseconds: 1500),
    showProgressIndicator: true,
    progressIndicatorBackgroundColor: primaryColor,
    snackPosition: SnackPosition.TOP,
  ));
}
