import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class TitleOfPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int totalDevice;
  final int onDevice;
  final bool isSingleRoom;

  const TitleOfPage({
    super.key,
    required this.isSingleRoom,
    required this.title,
    required this.imageUrl,
    required this.totalDevice,
    required this.onDevice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      height: 100.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(
          width: 1.w,
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: SvgPicture.asset(height: 80, imageUrl)),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: isSingleRoom
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: titleStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
                isSingleRoom
                    ? Container()
                    : Text(
                        '$onDevice / $totalDevice',
                        style: titleStyle.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
