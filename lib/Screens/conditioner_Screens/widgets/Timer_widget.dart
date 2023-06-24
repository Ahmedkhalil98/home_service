import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/conditioner_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GetCondetionerData());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      height: 100.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(width: 1.w, color: primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(
              //   Icons.timer,
              //   size: 30.w,
              // ),
              Text(
                "Timer",
                style: titleStyle,
              ),
              Spacer(),
              GetBuilder<GetCondetionerData>(builder: (controller) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.updateData('TIMER', '1');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color:
                                controller.timer == 1 ? secColor : Colors.white,
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
                        controller.updateData('TIMER', '0');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color: controller.timer == 0
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Set timer :",
                style: titleStyle,
              ),
              Container(
                height: 40.h,
                width: 160.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
