import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class CustomBottomBarButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? press;
  final Color selectedItemColor;
  final bool active;
  const CustomBottomBarButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.press,
      required this.selectedItemColor,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: active == true ? primaryColor : selectedItemColor,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: titleStyle.copyWith(
              fontSize: 13.sp,
              color: active == true ? primaryColor : selectedItemColor,
            ),
          )
        ],
      ),
    );
  }
}
