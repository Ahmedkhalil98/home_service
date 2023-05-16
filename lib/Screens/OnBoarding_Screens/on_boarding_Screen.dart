import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/on_boarding_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Screens/OnBoarding_Screens/Widget/custom_button.dart';
import 'package:home_service/Screens/OnBoarding_Screens/Widget/custom_dot_list.dart';
import 'package:home_service/Screens/OnBoarding_Screens/Widget/custom_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Column(
        children: [
           const Expanded(
            flex: 3,
            child: CustomSlider(),
          ),
          Expanded(
              child: Column(
            children: const [
              CustomDotList(),
              Spacer(flex: 2),
              CustomOnBoardingButton()
            ],
          ))
        ],
      )),
    );
  }
}
