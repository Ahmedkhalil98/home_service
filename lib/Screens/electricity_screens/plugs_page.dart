import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    "Bed",
    "Kitchen",
  ];
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleOfPage(
              title: "Plugs",
              imageUrl: "assets/tower.png",
            ),
            SizedBox(
              height: 400.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        width: 0.2,
                      ),
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
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: FlutterSwitch(
                              width: 80.w,
                              height: 30.h,
                              valueFontSize: 14.sp,
                              toggleSize: 45,
                              activeColor: Colors.green,
                              inactiveColor: Colors.red.withOpacity(0.6),
                              value: status,
                              borderRadius: 30.r,
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
