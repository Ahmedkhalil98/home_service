import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/conditioner_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class MoodWidget extends StatelessWidget {
  const MoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color selectItem = secColor;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      height: 50.h,
      decoration: BoxDecoration(
        color: white,
        border: Border.all(width: 1.w, color: primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //   Icon(
          //     Icons.mood,
          //     size: 30.w,
          //   ),
          Text(
            "Mood",
            style: titleStyle,
          ),
          GetBuilder<GetCondetionerData>(builder: (controller) {
            return Row(
              children: [
                ...List.generate(
                    controller.modeStateIcon.length,
                    (index) => CustomModeButton(
                          isActive:
                              controller.mode == controller.modeState[index]
                                  ? true
                                  : false,
                          iconData: controller.modeStateIcon[index],
                          onPressed: () {
                            controller.updateData(
                                'MOOD', controller.modeState[index]);
                          },
                        )),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class CustomModeButton extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed;
  final bool isActive;
  const CustomModeButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: 30.w,
        color: isActive == true ? secColor : Colors.black,
      ),
    );
  }
}
