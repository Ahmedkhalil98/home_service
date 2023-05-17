import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/on_boarding_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Data/Static/statics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 300,
                ),
                SizedBox(
                  height: 75.h,
                ),
                Text(
                  onBoardingList[i].title!,
                  style: titleStyle.copyWith(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: bodyStyle,
                  ),
                ),
              ],
            ));
  }
}
