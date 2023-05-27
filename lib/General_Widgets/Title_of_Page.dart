import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class TitleOfPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TitleOfPage({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      height: 120.h,
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
          SizedBox(
              height: 100.h,
              width: 90.w,
              child: Image.asset(
                color: Colors.black,
                imageUrl,
              )),
          Text(
            title,
            style: titleStyle.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}
