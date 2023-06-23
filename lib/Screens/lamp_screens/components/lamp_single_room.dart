import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class LampSingleRoom extends StatelessWidget {
  const LampSingleRoom({super.key});

  @override
  Widget build(BuildContext context) {
    bool status = false;
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(totalDevice: 10,isSingleRoom: true,
            onDevice: 5,title: "Room 1", imageUrl: AppImageAssets.lamp),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 64.h,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Icon(
                    Icons.light,
                    size: 30.h,
                    color: white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Lamp',
                    style: titleStyle,
                  ),
                ),
                const Spacer(),
                Container(
                    margin: EdgeInsets.only(right: 20.w),
                    child: FlutterSwitch(
                      activeText: "On",
                      inactiveText: "Off",
                      width: 90.w,
                      height: 30.h,
                      valueFontSize: 12.sp,
                      toggleSize: 45,
                      activeColor: Colors.green,
                      inactiveColor: Colors.red,
                      value: status,
                      borderRadius: 20.r,
                      padding: 4.w,
                      showOnOff: true,
                      onToggle: (val) {},
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
