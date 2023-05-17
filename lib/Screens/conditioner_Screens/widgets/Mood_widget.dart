import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class MoodWidget extends StatelessWidget {
  const MoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      height: 50.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(width: 1.w, color: primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.mood,
            size: 30.w,
          ),
          Text(
            "Mood",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          // Icon(
          //   Icons.atm,
          //   size: 30.w,
          //   color: Colors.grey,
          // ),
          Icon(
            Icons.sunny,
            size: 30.w,
            color: Colors.grey,
          ),
          Icon(
            Icons.ac_unit,
            size: 30.w,
            color: Colors.grey,
          ),
          Icon(
            Icons.mode_fan_off,
            size: 30.w,
            color: Colors.grey,
          ),
          Icon(
            Icons.water_drop,
            size: 30.w,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
