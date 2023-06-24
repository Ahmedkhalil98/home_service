// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class ElectricityPage extends StatelessWidget {
  ElectricityPage({super.key});

  List imgUrltemp = [
    "assets/tower.png",
    "assets/generator.png",
    "assets/plug.png",
  ];
  List titleTemp = [
    "Tower Electricity",
    "Generator Electricity",
    "Plugs",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(
              isActive: true,
            isSingleRoom: true,
            totalDevice: 10,
            onDevice: 5,
              title: "Electricity", imageUrl: "assets/electricity.png"),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 80.h,
                          width: 70.w,
                          margin: EdgeInsets.all(4.w),
                          child: Image.asset(imgUrltemp[index])),
                      Text(
                        titleTemp[index],
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: white,
                        size: 25.w,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
