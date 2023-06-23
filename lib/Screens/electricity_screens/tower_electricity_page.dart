import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/electricity_screens/widgets/DataSection_widget.dart';

class TowerElectricityPage extends StatelessWidget {
  const TowerElectricityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(totalDevice: 10,
            onDevice: 5,
            title: "Tower Electricity",
            imageUrl: "assets/tower.png",isSingleRoom: true,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: white,
              border: Border.all(width: 1.w, color: primaryColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Column(
              children: [],
            ),
          ),
          //! ----
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(width: 1.w, color: primaryColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DataSectionwidget(title: "Voltage", value: "220.0 V"),
                DataSectionwidget(title: "Current", value: "200.0 A"),
                DataSectionwidget(title: "Power", value: "0.0 W"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
