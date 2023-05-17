import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/main_screen_controller.dart';
import 'package:home_service/Screens/Main_Screen/bottom_appbar_widget/custom_bottomnavigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenControllerImp());
    return GetBuilder<MainScreenControllerImp>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar:  const CustomBottomNavigationBar(),
        body: controller.listPage.elementAt(controller.currentPage),
      );
    });
  }
}
