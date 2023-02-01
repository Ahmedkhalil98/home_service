import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Screens/Water_section_screens/water_page.dart';
import 'package:home_service/Screens/conditioner_Screens/conditioner_page.dart';
import 'package:home_service/Screens/conditioner_Screens/single_room.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/WaterPage',
          getPages: [
            GetPage(name: '/', page: () => const ConditionerPage()),
            GetPage(name: '/singleRoom', page: () => const SingleRoom()),
            GetPage(name: '/WaterPage', page: () => const WaterPage()),
            // GetPage(name: '/', page: () => const ConditionerPage()),
          ],
        );
      },
    );
  }
}
