import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/washing_modes.dart';

class WashingButton extends StatelessWidget {
  const WashingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
        margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        height: 120.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: white,
          border: Border.all(
            width: 1.w,
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: washingButtonName.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 60,
          ),
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text(
                washingButtonName[index],
                style: TextStyle(
                  color: white,
                ),
              ),
            );
          },
        ));
  }
}
