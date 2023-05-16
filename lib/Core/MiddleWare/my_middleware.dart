import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/Services/services.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == '2') {
      return const RouteSettings(name: AppRoutes.homeScreen);
    }
    if (myServices.sharedPreferences.getString('step') == '1') {
      return const RouteSettings(name: AppRoutes.mainScreen);
    }
    return null;
  }
}
