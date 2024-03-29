import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Services/services.dart';
import 'package:home_service/Screens/conditioner_Screens/conditioner_page.dart';
import 'package:home_service/Screens/conditioner_Screens/single_room.dart';
import 'package:home_service/firebase_options.dart';
import 'package:home_service/root.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //! Initilize All Startup Files => (initialServices):

  await initialServices();
  runApp(const MyApp());
}

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

          home: const ConditionerPage(),
          //getPages: routes,
        );
      },
    );
  }
}
