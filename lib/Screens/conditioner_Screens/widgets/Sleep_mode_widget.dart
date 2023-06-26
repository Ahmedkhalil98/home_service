import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/Conditioner/conditioner_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class SleepModeWidget extends StatelessWidget {
  const SleepModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 50.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(width: 1.w, color: primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon(
          //   Icons.nights_stay,
          //   size: 30.w,
          // ),
          Text(
            "Sleep Mode",
            style: titleStyle,
          ),
          GetBuilder<GetCondetionerData>(builder: (controller) {
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    controller.updateData('SLEEPMODE', '1');
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color:
                            controller.sleepMode == 1 ? secColor : Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 1, color: primaryColor)),
                    child: Text(
                      "ON",
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    controller.updateData('SLEEPMODE', '0');
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: controller.sleepMode == 0
                            ? secColor
                            : Colors.white10,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 1, color: primaryColor)),
                    child: const Text("OFF"),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
