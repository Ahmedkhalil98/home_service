import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      height: 110.h,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        border: Border.all(
          width: 0.4,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(
                imageUrl,
              )),
          Text(
            title,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
