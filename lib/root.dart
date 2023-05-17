import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/MiddleWare/my_middleware.dart';
import 'package:home_service/Screens/Auth/login_page.dart';
import 'package:home_service/Screens/Auth/signup_screen.dart';
import 'package:home_service/Screens/Doors_Screens/doors_page.dart';
import 'package:home_service/Screens/Home_Screen/home_page.dart';
import 'package:home_service/Screens/Main_Screen/main_screen.dart';
import 'package:home_service/Screens/Tv_Screens/main_page.dart';
import 'package:home_service/Screens/Water_section_screens/water_page.dart';
import 'package:home_service/Screens/conditioner_Screens/conditioner_page.dart';
import 'package:home_service/Screens/conditioner_Screens/single_room.dart';
import 'package:home_service/Screens/electricity_screens/electricity_page.dart';
import 'package:home_service/Screens/lamp_screens/components/lamp_single_room.dart';
import 'package:home_service/Screens/washing_Screens/washing_page.dart';

import 'Screens/OnBoarding_Screens/on_boarding_Screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/',
      page: () => const OnBoardingScreen(),
      middlewares: [MyMiddleWare()]),
  //? Auth Pages Routes:
  GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.signUpScreen, page: () => const SignUpScreen()),
  //? On Boarding :
  GetPage(name: AppRoutes.onBoadrding, page: () => const OnBoardingScreen()),
  //? Main Pages :
  GetPage(name: AppRoutes.mainScreen, page: () => const MainScreen()),
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  //? Home Cat. Items Pages :
  GetPage(name: AppRoutes.conditionerPage, page: () => const ConditionerPage()),
  GetPage(name: AppRoutes.electricityPage, page: () =>  ElectricityPage()),
  GetPage(name: AppRoutes.singleRoom, page: () => const SingleRoom()),
  GetPage(name: AppRoutes.waterPage, page: () => const WaterPage()),
  GetPage(name: AppRoutes.tvPage, page: () => const MainTVPage(),),
  GetPage(name: AppRoutes.washingPage, page: () => const WashingPage(),),
  GetPage(name: AppRoutes.doorPage, page: () => const DoorsPage(),),
  GetPage(name: AppRoutes.lampSingleRoomPage, page: () => const LampSingleRoom(),),
];
