import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({super.key});

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
          Icon(
            Icons.expand_less,
            size: 40.w,
          ),
        ],
      ),
    );
  }
}
