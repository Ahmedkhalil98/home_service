import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    backgroundColor: white,
    actions: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          onPressed: () {
            exit(0);
          },
          child: Text(
            "Confirm".tr,
            style: titleStyle,
          )),
      ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
          onPressed: () {
            Get.back();
          },
          child: Text(
            "Cancel".tr,
            style: titleStyle,
          )),
    ],
    title: "Hint".tr,
    titleStyle: titleStyle,
    content: Text(
      'Sure To Exit App?',
      style: titleStyle,
    ),
  );
  return Future.value(true);
}
