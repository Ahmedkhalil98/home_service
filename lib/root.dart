import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/MiddleWare/my_middleware.dart';
import 'package:home_service/Screens/Auth/login_page.dart';
import 'package:home_service/Screens/Auth/signup_screen.dart';
import 'package:home_service/Screens/Home_Screen/home_Page.dart';
import 'package:home_service/Screens/Water_section_screens/water_page.dart';
import 'package:home_service/Screens/conditioner_Screens/conditioner_page.dart';
import 'package:home_service/Screens/conditioner_Screens/single_room.dart';

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
  //? Pages :
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRoutes.conditionerPage, page: () => const ConditionerPage()),
  GetPage(name: AppRoutes.singleRoom, page: () => const SingleRoom()),
  GetPage(name: AppRoutes.waterPage, page: () => const WaterPage()),
];
