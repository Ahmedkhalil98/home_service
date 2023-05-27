import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';

import '../../General_Widgets/Title_of_Page.dart';

class SingleTVPage extends StatefulWidget {
  const SingleTVPage({super.key});

  @override
  State<SingleTVPage> createState() => _SingleTVPageState();
}

class _SingleTVPageState extends State<SingleTVPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const AppBarWidget(isHomePage: false,),
      body: Column(
        children: [
          const TitleOfPage(
            title: "Living Room",
            imageUrl: "assets/television.png",
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 50.h,
            width: double.infinity,
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
                const Icon(Icons.power_settings_new),
                Text(
                  "Power",
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                    margin: EdgeInsets.only(right: 20.w),
                    child: FlutterSwitch(
                      activeText: "ON",
                      inactiveText: "OFF",
                      width: 90.w,
                      height: 30.h,
                      valueFontSize: 12.sp,
                      toggleSize: 45,
                      activeColor: Colors.green,
                      inactiveColor: Colors.red,
                      value: status,
                      borderRadius: 20.r,
                      padding: 4.w,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
