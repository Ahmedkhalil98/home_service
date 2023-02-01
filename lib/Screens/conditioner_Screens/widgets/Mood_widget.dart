import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodWidget extends StatelessWidget {
  const MoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(
          width: 0.2,
        ),
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
          Icon(
            Icons.atm,
            size: 30.w,
          ),
          Icon(
            Icons.sunny,
            size: 30.w,
          ),
          Icon(
            Icons.ac_unit,
            size: 30.w,
          ),
          Icon(
            Icons.mode_fan_off,
            size: 30.w,
          ),
          Icon(
            Icons.water_drop,
            size: 30.w,
          ),
        ],
      ),
    );
  }
}
