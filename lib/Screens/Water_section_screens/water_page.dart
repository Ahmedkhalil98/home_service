import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class WaterPage extends StatelessWidget {
  const WaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const TitleOfPage(title: "Water", imageUrl: "assets/water.png"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(
                width: 0.2,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    " Tank Water level",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    "50 %",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 150.h,
                    width: 150.w,
                    child: const Placeholder(),
                  )
                ]),
          )
          //! Water puller

          ,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(
                width: 0.2,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Water puller",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const Text("Auto"),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const Text("ON"),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const Text("OFF"),
                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
