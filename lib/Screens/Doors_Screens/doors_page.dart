import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:flutter_switch/flutter_switch.dart';

class DoorsPage extends StatefulWidget {
  const DoorsPage({super.key});

  @override
  State<DoorsPage> createState() => _DoorsPageState();
}

class _DoorsPageState extends State<DoorsPage> {
  List temp = [
    "Main Door",
    "Hall",
    "Bed Room 1",
    "Bed Room 2",
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
              isActive: true,totalDevice: 10,
            isSingleRoom: true,
            onDevice: 5,
              title: "Doors",
              imageUrl: "assets/door.png",
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
                        Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Icon(
                            Icons.door_back_door,
                            size: 30.h,
                            color: white,
                          ),
                        ),
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
                              activeText: "OPen",
                              inactiveText: "Close",
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
