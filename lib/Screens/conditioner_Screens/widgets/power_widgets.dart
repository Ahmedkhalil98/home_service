import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/Conditioner/conditioner_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class PowerWidget extends StatelessWidget {
  const PowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GetCondetionerData());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon(
          //   Icons.power_settings_new,
          //   size: 30.w,
          // ),
          Text(
            "Power",
            style: titleStyle,
          ),
          const Spacer(),
          GetBuilder<GetCondetionerData>(builder: (controller) {
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    controller.updateData('POWER', '1');
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: controller.powerState == 1
                            ? secColor
                            : Colors.white,
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
                    controller.updateData('POWER', '0');
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: controller.powerState == 0
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
