import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/main_screen_controller.dart';
import 'package:home_service/Screens/Main_Screen/bottom_appbar_widget/custom_button_appbar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenControllerImp);
    return GetBuilder<MainScreenControllerImp>(builder: (controller) {
      return BottomAppBar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(controller.listPage.length, ((index) {
                return CustomBottomBarButton(
                  icon: controller.pageIcon[index],
                  title: controller.pageTitle[index],
                  press: () => controller.changePage(index),
                  selectedItemColor: Colors.black,
                  active: controller.currentPage == index ? true : false,
                );
              })),
            ],
          ),
        ),
      );
    });
  }
}
