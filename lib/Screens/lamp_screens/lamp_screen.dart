import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

import '../../General_Widgets/App_Bar_widget.dart';

class LampScreen extends StatelessWidget {
  const LampScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(title: "Lamp", imageUrl: AppImageAssets.lamp),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //! go to the single Room
                    Get.toNamed(AppRoutes.lampSingleRoomPage);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(AppImageAssets.lamp),
                        Text(
                          "Room ${index + 1}",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                          size: 25.h,
                        ),
                      ],
                    ),
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
