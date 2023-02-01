import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepModeWidget extends StatelessWidget {
  const SleepModeWidget({super.key});

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
            Icons.nights_stay,
            size: 30.w,
          ),
          Text(
            "Sleep Mode",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Text("ON"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: const Text("OFF"),
          ),
        ],
      ),
    );
  }
}
