import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class ConditionerPage extends StatelessWidget {
  const ConditionerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(
              isActive: false,
              isSingleRoom: false,
              totalDevice: 9,
              onDevice: 5,
              title: "Conditioner",
              imageUrl: AppImageAssets.conditioner),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //! go to the single Room
                    Get.toNamed(AppRoutes.singleRoom);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: itemsColor,
                      border: Border.all(width: 1, color: primaryColor),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                            height: 50, AppImageAssets.conditioner),
                        Text(
                          "Bad Room ${index + 1}",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.play_arrow_outlined,
                          color: primaryColor,
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
