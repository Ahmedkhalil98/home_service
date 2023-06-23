import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Data/Firebase/Conditioner/getdata.dart';

class PowerWidget extends StatelessWidget {
  const PowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GetCondetionerData());
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
            Icons.power_settings_new,
            size: 30.w,
          ),
          Text(
            "Power",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          GetBuilder<GetCondetionerData>(builder: (controller) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "ON",
                style: TextStyle(
                  color: white,
                ),
              ),
            );
          }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Text("OFF"),
          ),
        ],
      ),
    );
  }
}
