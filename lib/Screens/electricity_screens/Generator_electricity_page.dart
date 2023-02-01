import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/electricity_screens/widgets/DataSection_widget.dart';

class GeneratorElectricityPage extends StatelessWidget {
  const GeneratorElectricityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const TitleOfPage(
            title: "Generator Electricity",
            imageUrl: "assets/tower.png",
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(
                width: 0.2,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Image.asset(
                      "assets/tower.png",
                    )),
              ],
            ),
          ),
          //! ----
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 150.h,
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
                DataSectionwidget(title: "Voltage", value: "220.0 V"),
                DataSectionwidget(title: "Current", value: "200.0 A"),
                DataSectionwidget(title: "Power", value: "0.0 W"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
