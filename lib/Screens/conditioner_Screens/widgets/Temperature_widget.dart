import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      height: 50.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(
          width: 1.w,
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.device_thermostat,
            size: 30.w,
          ),
          Text(
            "Temperature",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          Icon(
            Icons.expand_more,
            size: 40.w,
          ),
          Text(
            "40",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          Icon(
            Icons.expand_less,
            size: 40.w,
          ),
        ],
      ),
    );
  }
}
