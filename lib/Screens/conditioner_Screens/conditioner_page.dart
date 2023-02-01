import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class ConditionerPage extends StatelessWidget {
  const ConditionerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const TitleOfPage(
              title: "Conditioner", imageUrl: "assets/conditioner_black.png"),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("singleRoom");
                  },
                  child: Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/conditioner_red.png"),
                        Text(
                          "Room ${index + 1}",
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
