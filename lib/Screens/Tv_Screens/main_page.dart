import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class MainTVPage extends StatelessWidget {
  const MainTVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(
              isActive: true,totalDevice: 10,isSingleRoom: true,
            onDevice: 5,
            title: "Television (TV)",
            imageUrl: "assets/television.png",
          ),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //! go to single TV
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/television_red.png"),
                        Text(
                          "Room ${index + 1}",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                          size: 25.h,
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
