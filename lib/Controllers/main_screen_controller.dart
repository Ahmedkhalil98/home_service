import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Screens/Home_Screen/home_page.dart';
import 'package:home_service/Screens/settings/settings_screen.dart';

abstract class MainScreenController extends GetxController {
  changePage(int currentPage);
}

class MainScreenControllerImp extends MainScreenController {
  int currentPage = 0;
  List<Widget> listPage = const [
    HomeScreen(),
    Center(child: Text("Notifi")),
    Center(child: Text("Profile")),
    SettingScreen()
  ];
  List<String> pageTitle = [
    'Home',
    'Notification',
    'Profile',
    'Setting',
  ];
  List<IconData> pageIcon = [
    Icons.home,
    Icons.notifications,
    Icons.person,
    Icons.settings,
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
