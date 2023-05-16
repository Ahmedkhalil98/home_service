import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class FooterText extends StatelessWidget {
  String title;
  String buttonTitle;
  Callback press;
  FooterText({
    required this.title,
    required this.buttonTitle,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: titleStyle.copyWith(fontSize: 15),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            buttonTitle,
            style: titleStyle.copyWith(fontSize: 15, color: primaryColor),
          ),
        ),
      ],
    );
  }
}
