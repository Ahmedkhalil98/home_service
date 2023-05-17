// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class DataSectionwidget extends StatelessWidget {
  String title;
  String value;
  DataSectionwidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: white,
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 16.sp, fontWeight: FontWeight.bold, color: white),
            )),
      ],
    );
  }
}
