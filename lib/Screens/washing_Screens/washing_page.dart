import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/washing_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/washing_modes.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/Water_section_screens/widgets/washing_button.dart';

class WashingPage extends StatelessWidget {
  const WashingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WashongController());
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          const TitleOfPage(
              isActive: true,totalDevice: 10,isSingleRoom: true,
            onDevice: 5,
            title: "Washing",
            imageUrl: "assets/washing-machine.png",
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
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: const Text(
                    "ON",
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "OFF",
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
              height: 45.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: white,
                border: Border.all(
                  width: 1.w,
                  color: primaryColor,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: GetBuilder<WashongController>(
                builder: (controller) {
                  return DropdownButton(
                      //!Change the value later
                      value: controller.selectedItem,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 32.w,
                      underline: const SizedBox(),
                      items: washingModes
                          .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 14.sp),
                              )))
                          .toList(),
                      onChanged: (value) {
                        controller.changeValue(value!);
                      });
                },
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: white,
              border: Border.all(
                width: 1.w,
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.device_thermostat,
                      size: 34.w,
                    ),
                    Icon(
                      Icons.schedule,
                      size: 34.w,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "40 C",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "1:30",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const WashingButton(),
        ],
      ),
    );
  }
}
