import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PlugsPage extends StatefulWidget {
  const PlugsPage({super.key});

  @override
  State<PlugsPage> createState() => _PlugsPageState();
}

class _PlugsPageState extends State<PlugsPage> {
  List temp = [
    "garden",
    "Hall",
    "Bed Room 1",
    "Bed Room 2",
    "Bed Room 3",
    "Kitchen",
    "bathroom",
  ];
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleOfPage(
              title: "Plugs",
              imageUrl: "assets/plug.png",
            ),
            SizedBox(
              height: 500.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: temp.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.w),
                          child: Text(
                            temp[index],
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: white,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: FlutterSwitch(
                              width: 80.w,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
